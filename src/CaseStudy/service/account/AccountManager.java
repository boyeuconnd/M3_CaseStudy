package CaseStudy.service.account;

public class AccountManager {
    private final String USER_ADMIN = "admin";
    private final String PASSWORD_ADMIN = "admin";


    public boolean login(String user, String password){
        if(user.equalsIgnoreCase(USER_ADMIN)&& password.equals(PASSWORD_ADMIN)){
            return true;
        }
        return false;
    };
}
