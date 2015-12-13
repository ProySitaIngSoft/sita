package paquete;

public class LoginAction 
{
	private String username;
        private String password;
 
	public String getUsername() {
		return username;
	}
 
	public void setUsername(String username) {
		this.username = username;
	}
        
        public String getPassword() {
		return password;
	}
 
	public void setPassword(String password) {
		this.password = password;
	}
 
	public String execute() {
            LoginBeanX lb = new LoginBeanX();
            System.out.println("Usuario: " + username);
        //check to see if this user/password combination are valid
            int acc = lb.validateUser(username, password);
        if(acc!=0){
            if(acc==3){
                return "exitoso";
            }else if(acc==2){
                return "medicoi";
            }else{
                return "pacientei";
            }
        }else{
            return "error";
        }
	}
    }
