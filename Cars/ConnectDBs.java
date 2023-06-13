package Cars;
import java.sql.*;

public class ConnectDBs {
    public static void main(String[] args) {
        try {
            // - MySQL workbench 실행 : JDBC
            // - User/password와 접속 IP:port 접속
            String url = "jdbc:mysql://127.0.0.1:3306/db_cars";
            String user = "root";
            String password = "!yojulab*";
            // getConnection 인자 3가지 url,user,passWord
            Connection connection = DriverManager.getConnection(url, user, password);
            System.out.println("DB연결 성공\n");

            // - query Edit
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM factorys";
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                System.out.println(resultSet.getString("COMPANY_ID") + resultSet.getString("COMPANY"));
            }

            // SELECT COUNT(*) AS CNT FROM factorys;
            query = "SELECT COUNT(*) AS CNT FROM factorys";
            resultSet = statement.executeQuery(query);
            int totalCount = 0;
            while (resultSet.next()) {
                System.out.println(resultSet.getInt("CNT"));
                totalCount = resultSet.getInt("CNT");
            }

            /*
            INSERT INTO factorys
            (COMPANY_ID, COMPANY) 
            VALUE 
            ('CAR-01', 'AUDI');
            */


            /*update factorys
             SET COMPANY = '패러리'
             WHERE COMPANY_ID = 'CAR-01' ;
             DELETE FROM factorys
             WHERE COMPANY_ID = 'CAR-01' ; */

           // DATA 수정

            String companyId = "CAR-01";
            String company = "AUDI" ;
            query = "INSERT INTO factorys " +
                    "(COMPANY_ID, COMPANY) " +
                    " VALUE " +
                    "('"+companyId+"', '"+company+"') ";           
            int count = statement.executeUpdate(query);

            query = " UPDATE factorys " + 
            "SET COMPANY = '페러리' " + 
            "WHERE COMPANY_ID = '"+companyId+"' ";
            count = statement.executeUpdate(query); // CAR-01 의 AUDI를 페러리로 변경
          
             query = "delete FROM factorys " + 
            "WHERE COMPANY_ID = '"+companyId+"'";
            count = statement.executeUpdate(query); // CAR-01 삭제

            
            System.out.println();
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println(e.getMessage());
        }
        System.out.println();
    }
}