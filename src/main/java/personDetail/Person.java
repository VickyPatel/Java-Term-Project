package personDetail;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import javax.faces.bean.ManagedBean;
import javax.json.Json;
import javax.json.JsonObject;

/**
 *
 * @author c0633648
 */
@ManagedBean
public class Person {

    public String name;
    public String email;
    public String password;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Person(JsonObject json) {

        this.name = json.getString("name");
        this.email = json.getString("email");
        this.password = json.getString("password");

    }

    public JsonObject toJSON() {
        JsonObject json = Json.createObjectBuilder()
                .add("name", this.name)
                .add("email", this.email)
                .add("password", this.password)
                .build();
        return json;
    }

}
