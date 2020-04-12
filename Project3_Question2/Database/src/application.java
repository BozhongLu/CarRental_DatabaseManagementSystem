import java.sql.* ;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

class application
{
    public static  Scanner sc = new Scanner(System.in);
    public static Connection con;
    public static boolean running = true;
    public static int sqlCode = 0;      // Variable to hold SQLCODE
    public static String sqlState = "00000";  // Variable to hold SQLSTATE

    public static void main(String[] args) throws SQLException
    {
        // Register the driver.  You must register the driver before you can use it.
        try
        {
            DriverManager.registerDriver(new org.postgresql.Driver());
        }
        catch (Exception cnfe)
        {
            System.out.println("Class not found");
        }

        // This is the url you must use for Postgresql.
        // Note: This url may not valid now !
        String url = "jdbc:postgresql://comp421.cs.mcgill.ca:5432/cs421";
        try
        {
            con = DriverManager.getConnection(url, "cs421g83", "2083dbSQ");
        }
        catch (Exception e){
            e.printStackTrace();
            System.exit(0);
        }
        System.out.println("# Congratulation! You have successfully connected to our database");

        // start the application
        start();
    }

    public static void start() throws SQLException
    {
        while (running)
        {
            System.out.println("====== Welcome to use our Vroom application ======");
            System.out.println
                    (""
                    + "==== Here is a list of options for you ====\n"
                    + "* Please enter the corresponding number of the option\n"
                    + "-> Option 1: Get the list of employees whose salary is greater than ___ (a number)\n"
                    + "-> Option 2: Add a new car into the table Car\n"
                    + "-> Option 3: Increases the salary by _% for employees whose salary is less than ___ (a number). Then, show modified employee table \n"
                    + "-> Option 4: Reward ___ (a number) points to all members who registered before the date ____.\n"
                    + "-> Option 5: List names of all the customers who do not have a rental in ascengding order\n"
                    + "-> Option 6: List all the rental records for customers who are not members\n"
                    + "-> Option 0: Close the application\n"
                    + "=== === === === === === === === === === ===");
            // read the option
            int option = sc.nextInt();
            switch (option)
            {
                case 0:
                    running = false;
                    run_option_zero();
                    break;
                case 1:
                    run_option_one();
                    break;
                case 2:
                    run_option_two();
                    break;
                case 3:
                    run_option_three();
                    break;
                case 4:
                    run_option_four();
                    break;
                case 5:
                    run_option_five();
                    break;
                case 6:
                    run_option_six();
                    break;
                default:
                    System.out.println("No option selected. Please enter the corresponding number of the option from 0 to 6");
                    break;
            }
        }
        // close this application
        close_application();
    }

    private static void close_application() throws SQLException {
        // close connection
        con.close();
        // close scanner
        sc.close();
        System.out.println("You have closed the application. Thank you!");
    }

    private static void run_option_zero()
    {
        System.out.println("Option 0 is selected, the application will quit.");
        running = false;
    }

    private static void run_option_one() throws SQLException
    {
        System.out.println("Option 1 is selected, please enter a salary(eg: 3000): ");
        // Querying a table
        try {
            float salary_limit = sc.nextFloat();
            String querySQL = "SELECT * FROM employee WHERE salary > ?";
            PreparedStatement st = con.prepareStatement(querySQL);
            st.setFloat(1, salary_limit);
            System.out.println(querySQL.substring(0, querySQL.length() -1) + salary_limit);
            java.sql.ResultSet rs = st.executeQuery();

            while (rs.next())
            {
                String name = rs.getString(3);
                float sala = rs.getFloat("salary");
                System.out.println("name:  " + name);
                System.out.println("salary:  " + sala);
            }
            st.close();
            System.out.println("DONE");
        } catch (SQLException e) {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
        }
    }

    private static void run_option_two() throws SQLException
    {
        System.out.println("Option 2 is selected");
        // Inserting a table
        // example: INSERT INTO car VALUES ( 11, 'mazda', 'abc999', 'rx7', 'yellow', '2020-02-14', 989, 'Compact Car', 8, 'initial d');
        try
        {
            System.out.println("Please enter the registration_num: ");
            Long registration_num = sc.nextLong();
            sc.nextLine(); //throw away the \n not consumed by nextInt()
            System.out.println("Please enter the make: ");
            String make = sc.nextLine();
            System.out.println("Please enter the plate_number: ");
            String plate_number = sc.nextLine();
            System.out.println("Please enter the model: ");
            String model = sc.nextLine();
            System.out.println("Please enter the color: ");
            String color = sc.nextLine();
            System.out.println("please enter the purchase_date: ");
            String purchase_date = sc.nextLine();
            System.out.println("please enter the milage: ");
            int milage = sc.nextInt();
            sc.nextLine(); //throw away the \n not consumed by nextInt()
            System.out.println("please enter the name(eg. Compact Car): ");
            String name = sc.nextLine();
            System.out.println("please enter the empolyee_id: ");
            Long employee_id = sc.nextLong();
            sc.nextLine(); //throw away the \n not consumed by nextInt()
            System.out.println("please enter the description: ");
            String description = sc.nextLine();

            String insertSQL = "INSERT INTO car " +
                    "VALUES ( " + registration_num + ", '" + make + "', '" + plate_number + "', '" + model + "', '"
                    + color + "', '" + purchase_date + "', " + milage + ", '" + name + "', " + employee_id + ", '" + description + "');";
            Statement st = con.createStatement();
            System.out.println ( insertSQL ) ;
            java.sql.ResultSet rs = st.executeQuery(insertSQL);

            st.close();
            System.out.println("DONE");
        }
        catch (SQLException e)
        {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
        }
    }

    private static void run_option_three() throws SQLException
    {
        System.out.println("Option 3 is selected");
        // Updating a table
        try
        {
            System.out.println("Please enter a double number with range [0, 1]");
            double percent = sc.nextDouble();
            System.out.println("Please enter a limit of salary (eg: 3000):");
            float salary_limit = sc.nextFloat();

            String updateSQL = "UPDATE employee" + " SET salary = salary * " + (1 + percent) + " WHERE salary < ?";
            PreparedStatement st = con.prepareStatement(updateSQL);
            st.setFloat(1, salary_limit);
            System.out.println(updateSQL.substring(0, updateSQL.length() -1) + salary_limit);
            st.executeQuery();

            st.close();
            System.out.println("DONE");
        }
        catch (SQLException e)
        {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
        }
        // Show the employee table with name and salary
        try
        {
            String querySQL = "SELECT * FROM employee";
            System.out.println(querySQL);
            Statement st = con.createStatement();
            java.sql.ResultSet rs = st.executeQuery(querySQL);

            while (rs.next())
            {
                String name = rs.getString(3);
                float sala = rs.getFloat("salary");
                System.out.println("name:  " + name);
                System.out.println("salary:  " + sala);
            }
            st.close();
        } catch(SQLException e)
        {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
        }
    }

    private static void run_option_four() throws SQLException
    {
        System.out.println("Option 4 is selected");
        // Updating a table
        try
        {
            System.out.println("Please enter a number (reward points): ");
            int points = sc.nextInt();
            sc.nextLine(); //throw away the \n not consumed by nextInt()
            System.out.println("Please enter a date");
            String date_limit = sc.nextLine();
            java.sql.Date date = java.sql.Date.valueOf(date_limit);

            String updateSQL = "UPDATE member" + " SET points = points + " + points + " WHERE registration_date < ?;";
            PreparedStatement st = con.prepareStatement(updateSQL);
            st.setDate(1, date);
            System.out.println(updateSQL.substring(0, updateSQL.length() -2) + date_limit + ";");
            st.executeQuery();

            st.close();
            System.out.println("DONE");
        }
        catch (SQLException e)
        {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
        }
    }

    private static void run_option_five() throws SQLException
    {
        System.out.println("Option 5 is selected");
        // Querying a table with 2 SQL statements
        try
        {
            String querySQL_1 = "SELECT customer.name FROM customer WHERE customer.email NOT IN ";
            String querySQL_2 = "(SELECT rental.email FROM rental) ORDER BY customer.name;";
            String querySQL = querySQL_1 + querySQL_2;
            Statement st = con.createStatement();
            System.out.println ( querySQL) ;
            java.sql.ResultSet rs = st.executeQuery(querySQL);

            while (rs.next())
            {
                String name = rs.getString("name");
                System.out.println("name:  " + name);
            }

            st.close();
            System.out.println("DONE");
        }
        catch (SQLException e)
        {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
        }
    }

    private static void run_option_six() throws SQLException
    {
        System.out.println("Option 6 is selected");
        // Querying a table with 2 SQL statements
        try
        {
            String querySQL_1 = "SELECT customer.name, rental.rental_id FROM rental INNER JOIN customer ON rental.email = customer.email WHERE customer.email NOT IN";
            String querySQL_2 = "(SELECT member.email FROM member);";
            String querySQL = querySQL_1 + querySQL_2;
            Statement st = con.createStatement();
            System.out.println ( querySQL) ;
            java.sql.ResultSet rs = st.executeQuery(querySQL);

            while (rs.next())
            {
                String name = rs.getString("name");
                int rental_id = rs.getInt("rental_id");
                System.out.println("name:  " + name + "  rental_id: " + rental_id);
            }

            st.close();
            System.out.println("DONE");
        }
        catch (SQLException e)
        {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
        }
    }
}