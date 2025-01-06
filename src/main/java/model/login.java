package model;

public class login {
  private String email;
  private String password;
  
  public login(String email,String password) {
	  this.email=email;
	  this.password=password;
  }

	public String getemail() {
		return this.email;
	}
	public void setemail(String email) {
		this.email=email;
	}
	public String getpassword() {
		return this.password;
	}
	public void setpassword(String password) {
		this.password=password;
	}
}
