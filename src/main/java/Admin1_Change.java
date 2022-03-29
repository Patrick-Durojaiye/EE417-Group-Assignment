
public class Admin1_Change {

	private String old_name, new_name, old_password, new_password, bank_balance;
	
	

	public Admin1_Change() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin1_Change(String old_name, String new_name, String old_password, String new_password,
			String bank_balance) {
		super();
		this.old_name = old_name;
		this.new_name = new_name;
		this.old_password = old_password;
		this.new_password = new_password;
		this.bank_balance = bank_balance;
	}

	public String getOld_name() {
		return old_name;
	}

	public void setOld_name(String old_name) {
		this.old_name = old_name;
	}

	public String getNew_name() {
		return new_name;
	}

	public void setNew_name(String new_name) {
		this.new_name = new_name;
	}

	public String getOld_password() {
		return old_password;
	}

	public void setOld_password(String old_password) {
		this.old_password = old_password;
	}

	public String getNew_password() {
		return new_password;
	}

	public void setNew_password(String new_password) {
		this.new_password = new_password;
	}

	public String getBank_balance() {
		return bank_balance;
	}

	public void setBank_balance(String bank_balance) {
		this.bank_balance = bank_balance;
	}
	
	
}
