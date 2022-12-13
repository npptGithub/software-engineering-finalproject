package com.example.softwareproject.data;

import android.util.Log;

import com.example.softwareproject.data.model.LoggedInUser;
import com.example.softwareproject.database.ConnSQL;

import java.io.IOException;
import java.sql.ResultSet;

/**
 * Class that handles authentication w/ login credentials and retrieves user information.
 */
public class LoginDataSource {

    public Result login(String username, String password) {
        ConnSQL conn = new ConnSQL();

        try {
            ResultSet rs = conn.getSetWithoutEle("[USER]","userID","username = '"+username+"' and password = '"+password+"'");
            rs.next();
            rs.getInt(1);
            LoggedInUser fakeUser =
                    new LoggedInUser(
                            java.util.UUID.randomUUID().toString(),
                            "Jane Doe");
            Log.d("11111111", "login: success");
            return new Result.Success<>(fakeUser);
        } catch (Exception e) {
            return new Result.Error(new IOException("Error logging in", e));
        }
    }

    public void logout() {
        // TODO: revoke authentication
    }
}