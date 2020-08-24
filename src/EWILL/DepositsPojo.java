package EWILL;

public class DepositsPojo {
	
	int depositsId;
	int userId;
	String holderName;
	String bankName;
	String bankAddress;
	String nominee;
	int amount;
	String dateOfMaturity;
	
	public int getDepositsId() {
		return depositsId;
	}
	public void setDepositsId(int depositsId) {
		this.depositsId = depositsId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getHolderName() {
		return holderName;
	}
	public void setHolderName(String holderName) {
		this.holderName = holderName;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBankAddress() {
		return bankAddress;
	}
	public void setBankAddress(String bankAddress) {
		this.bankAddress = bankAddress;
	}
	public String getNominee() {
		return nominee;
	}
	public void setNominee(String nominee) {
		this.nominee = nominee;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getDateOfMaturity() {
		return dateOfMaturity;
	}
	public void setDateOfMaturity(String dateOfMaturity) {
		this.dateOfMaturity = dateOfMaturity;
	}
	
	
}
