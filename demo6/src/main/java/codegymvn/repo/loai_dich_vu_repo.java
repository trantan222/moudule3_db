package codegymvn.repo;

import codegymvn.DBConection.name;
import codegymvn.model.loai_dich_vu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class loai_dich_vu_repo implements loai_dich_vuRepo {

    public static final String SELECT = "select * from loai_dich_vu";

    @Override
    public List<loai_dich_vu> Find_all() {
        Connection connection = name.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<loai_dich_vu> loai_dich_vus = new ArrayList<>();
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT);
                resultSet = preparedStatement.executeQuery();

                loai_dich_vu loai_dich_vu = null;
                while(resultSet.next()){
                    String name = resultSet.getString("ten_loai_dich_vu");

                    loai_dich_vu = new loai_dich_vu(name);
                    loai_dich_vus.add(loai_dich_vu);
                }

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }
            name.close();
        }


        return null;
    }

    @Override
    public void save(loai_dich_vu loai_dich_vu) {

    }
}
