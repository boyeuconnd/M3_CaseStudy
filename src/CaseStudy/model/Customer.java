package CaseStudy.model;

public class Customer {
    public Customer(String firstName, String lastName, String email, String account, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.account = account;
        this.password = password;
    }

    public Customer(int id, String firstName, String lastName, String email, String account, String password, int role) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.account = account;
        this.password = password;
        this.role = role;
    }

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String account;
    private String password;
    private int role;


    public Customer() {
    }


}
