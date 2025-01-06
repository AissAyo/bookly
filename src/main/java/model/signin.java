package model;

public class signin {
	
	private String name;
	private String email;
	private String password;
	
	
	public signin(String name,String email,String password) {
		this.name=name;
		this.email=email;
		System.out.println(password+" const  password jay mn parammetre");
	
		System.out.println(this.password+" const 9bal password");
		this.password=password;
		System.out.println(this.password+" const mor password");
	}
	public String getname() {
		return this.name;
	}
	public void setname(String name) {
		this.name=name;
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
