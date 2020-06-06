package model;

public class Staff {

    private int id;
    private String firstName;
    private String lastName;
    private String nickName;
    private String description;
    private double price;

    private String rank;
    private String status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(EnumStaffStatus status) {
        this.status = status.toString();
    }

    public String getRank() {
        return rank;
    }

    public void setRank(EnumStaffRank rank) {
        this.rank =  rank.toString();
    }

    public Staff() {}

    public Staff(int id, String firstName, String lastName, String nickName, double price) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.nickName = nickName;
        this.price = price;
    }
}
