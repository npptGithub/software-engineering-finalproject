package com.example.softwareproject.database;

public class DatabaseInf {
    private final String url;

    public DatabaseInf() {
        String password = "123456";
        String username = "sceddd";
        String db = "FinalProjectDBs";
        String port = "1433";
        String ip = "10.0.13.197";        // switch this ip to your ip address
        this.url = "jdbc:jtds:sqlserver://" + ip + ":" + port + ";databasename=" + db + ";user=" + username + ";"+"password=" + password + ";";
    }

    public String getDb(){
        return url;
    }

}
