package co.barclays.demoapp.object;

/**
 * Created by leanh215 on 7/20/15.
 */
public class Contact {

    String id;
    String name;
    String phone;

    public Contact() {

    }

    public Contact(String id, String name, String phone) {
        this.id = id;
        this.name = name;
        this.phone = phone;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String toString() {
        return "{id=" + id + ", name=" + name + ", phone=" + phone + "}";
    }

}
