package com.epam.lab.ultimatewebservice.db.dao;


import com.epam.lab.ultimatewebservice.db.connpool.ConnectionPool;
import com.epam.lab.ultimatewebservice.entity.Tour;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import static org.omg.PortableServer.IdAssignmentPolicyValue.USER_ID;

@Component
public class TourDAO {

    private final static String ADD_TOUR =
            "INSERT INTO tours (hot, price, duration, agent_id, active, tour_types_id, tour_name) VALUES(?,?,?,?,?,?,?)";
    private final static String DELETE_TOUR_BY_ID =
            "DELETE FROM tours WHERE id=?";
    private final static String GET_ALL_TOURS =
            "SELECT id, hot, price, duration, agent_id, active, tour_types_id, tour_name FROM tours";
    private final static String GET_TOUR_BY_ID =
            "SELECT id, hot, price, duration, agent_id, active, tour_types_id, tour_name FROM tours WHERE id=?";

    private final static String ID = "id";
    private final static String HOT= "hot";
    private final static String PRICE = "price";
    private final static String DURATION  = "duration";
    private final static String AGENT_ID  = "agent_id";
    private final static String ACTIVE  = "active";
    private final static String TOUR_TYPES_ID  = "tour_types_id";
    private final static String TOUR_NAME = "tour_name";

    private JdbcDAO jdbcDAO;

    @Autowired
    public TourDAO(ConnectionPool connectionPool) {
        jdbcDAO = () -> {
            try {
                return connectionPool.getConnection();
            } catch (InterruptedException e) {
                e.printStackTrace();
                return null;
            }
        };
    }

    public Optional<Tour> addTour(Tour tour) {
        return Optional.ofNullable(jdbcDAO.mapPreparedStatementFlagged(preparedStatement -> {
            try {
                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
            try (ResultSet rs = preparedStatement.getGeneratedKeys()) {
                return !rs.next() ? null : new Tour()
                        .setId(rs.getInt(1))
                        .setHot(tour.isHot())
                        .setPrice(tour.getPrice())
                        .setDuration(tour.getDuration())
                        .setAgentId(tour.getAgentId())
                        .setActive(tour.isActive())
                        .setTourTypesId(tour.getTourTypesId())
                        .setTourName(tour.getTourName());
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }, ADD_TOUR, tour.isHot(), tour.getPrice(), tour.getDuration(),
                tour.getAgentId(), tour.isActive(), tour.getTourTypesId(), tour.getTourName()));
    }


    public Optional<Tour> updateTour(Tour newTour) {
        Optional<Tour> optionalTour = getTourById(newTour.getId());
        if (!optionalTour.isPresent()) {
            return Optional.empty();
        }
        Tour oldTour = optionalTour.get();
        Map<String, String> tourMap = getFieldsToUpdate(newTour, oldTour);
        if (tourMap.size() == 0) {
            return Optional.ofNullable(oldTour);
        }
        StringBuilder SQL = new StringBuilder("UPDATE tours SET ");
        for (Iterator<Map.Entry<String, String>> iterator = tourMap.entrySet().iterator(); iterator.hasNext();) {
            Map.Entry<String, String> param = iterator.next();
            SQL.append(param.getKey()).append("=?");
            if (iterator.hasNext()) {
                SQL.append(", ");
            } else {
                SQL.append(" ");
            }
        }
        SQL.append(" WHERE id=?");
        tourMap.put(ID, String.valueOf(newTour.getId()));
        return jdbcDAO.mapPreparedStatement(preparedStatement -> {
            try {
                preparedStatement.executeUpdate();
                return Optional.of(oldTour);
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }, SQL.toString(), tourMap.values().toArray());
    }

    public boolean deleteTourById(int id) {
        return jdbcDAO.mapPreparedStatement(preparedStatement -> {
            try {
                preparedStatement.executeUpdate();
                return true;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }
        }, DELETE_TOUR_BY_ID, id);

    }

    public List<Tour> getAllTours() {
        List<Tour> tourList = new ArrayList<>();
        jdbcDAO.withResultSet(rs -> {
            try {
                while (rs.next()) {
                    tourList.add(new Tour()
                            .setId(rs.getInt(ID))
                            .setHot(rs.getBoolean(HOT))
                            .setPrice(rs.getInt(PRICE))
                            .setDuration(rs.getInt(DURATION))
                            .setAgentId(rs.getInt(AGENT_ID))
                            .setActive(rs.getBoolean(ACTIVE))
                            .setTourTypesId(rs.getInt(TOUR_TYPES_ID))
                            .setTourName(rs.getString(TOUR_NAME)));
                }
            }catch (SQLException e) {
                throw new RuntimeException("Got an exception");
            }
        }, GET_ALL_TOURS);

        return tourList;
    }


    public Optional<Tour> getTourById(int id) {
        return Optional.ofNullable(jdbcDAO.mapPreparedStatement(preparedStatement -> {
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    return new Tour()
                            .setId(id)
                            .setHot(resultSet.getBoolean(HOT))
                            .setPrice(resultSet.getInt(PRICE))
                            .setDuration(resultSet.getInt(DURATION))
                            .setAgentId(resultSet.getInt(AGENT_ID))
                            .setActive(resultSet.getBoolean(ACTIVE))
                            .setTourTypesId(resultSet.getInt(TOUR_TYPES_ID))
                            .setTourName(resultSet.getString(TOUR_NAME));
                }
                return null;
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }, GET_TOUR_BY_ID, id));
    }



    private Map<String, String> getFieldsToUpdate(Tour newValue, Tour oldValue) {
        Map<String, String> tourMap = new LinkedHashMap<>();
        if (oldValue.isActive() != newValue.isActive()){
            tourMap.put(ACTIVE, String.valueOf(booleanInterpretator(newValue.isActive())));
            oldValue.setActive(newValue.isActive());
        }
        if (oldValue.isHot() != newValue.isHot()){
            tourMap.put(HOT, String.valueOf(booleanInterpretator(newValue.isHot())));
            oldValue.setHot(newValue.isHot());
        }
        if (oldValue.getTourTypesId() != newValue.getTourTypesId()){
            tourMap.put(TOUR_TYPES_ID, String.valueOf(newValue.getTourTypesId()));
            oldValue.setTourTypesId(newValue.getTourTypesId());
        }
        if (oldValue.getAgentId() != newValue.getAgentId()){
            tourMap.put(AGENT_ID, String.valueOf(newValue.getAgentId()));
            oldValue.setAgentId(newValue.getAgentId());
        }
        if (oldValue.getDuration() != newValue.getDuration()){
            tourMap.put(DURATION, String.valueOf(newValue.getDuration()));
            oldValue.setDuration(newValue.getDuration());
        }
        if (oldValue.getPrice() != newValue.getPrice()){
            tourMap.put(PRICE, String.valueOf(newValue.getPrice()));
            oldValue.setPrice(newValue.getPrice());
        }
        if (!(oldValue.getTourName().equals(newValue.getTourName()))){
            tourMap.put(TOUR_NAME, newValue.getTourName());
            oldValue.setTourName(newValue.getTourName());
        }
        return tourMap;
    }

    private int booleanInterpretator(boolean value){
        if (value == true) return 1;
        else return 0;
    }
}

