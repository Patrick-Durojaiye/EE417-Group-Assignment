
public class Loan_Application {

	private String account_no, name, email, burrow;

	
	public Loan_Application() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Loan_Application(String account_no, String name, String email, String burrow) {
		super();
		this.account_no = account_no;
		this.name = name;
		this.email = email;
		this.burrow = burrow;
	}

	public String getAccount_no() {
		return account_no;
	}

	public void setAccount_no(String account_no) {
		this.account_no = account_no;
	}

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

	public String getBurrow() {
		return burrow;
	}

	public void setBurrow(String burrow) {
		this.burrow = burrow;
	}

	
}
