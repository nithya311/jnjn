package organization_test;

import javax.persistence.Entity;

@Entity
public class Employee {

	public Employee(int emp_id, String password, String type, int domain_id) {
		super();
		this.emp_id = emp_id;
		this.password = password;
		this.type = type;
		this.domain_id = domain_id;
	}
	int emp_id;
	String password;
	String type;
	int domain_id;
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getDomain_id() {
		return domain_id;
	}
	public void setDomain_id(int domain_id) {
		this.domain_id = domain_id;
	}
	
}
