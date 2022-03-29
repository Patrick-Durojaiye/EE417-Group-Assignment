
public class Transfer_Funds {
	private String account_no, email, memo, transfer;

	public Transfer_Funds() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Transfer_Funds(String account_no, String email, String memo, String transfer) {
		super();
		this.account_no = account_no;
		this.email = email;
		this.memo = memo;
		this.transfer = transfer;
	}

	public String getAccount_no() {
		return account_no;
	}

	public void setAccount_no(String account_no) {
		this.account_no = account_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getTransfer() {
		return transfer;
	}

	public void setTransfer(String transfer) {
		this.transfer = transfer;
	}
	
	
}
