public class User {
    private  String username;
    private  String password;
    public User(String username,String password){
        this.username = username;
        this.password = password;
    }
    public User(){
    }
    public void setUserName(String username) {
        this.username = username;
    }
    public String getUserName() {
        return username;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getPassword() {
        return password;
    }
}
