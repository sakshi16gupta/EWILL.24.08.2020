package EWILL;

public class DocumentsPojo {
	int documentsId;
	int userId;
	int docTypeId;
	String location;
	
	public int getDocumentsId() {
		return documentsId;
	}
	public void setDocumentsId(int documentsId) {
		this.documentsId = documentsId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getDocTypeId() {
		return docTypeId;
	}
	public void setDocTypeId(int docTypeId) {
		this.docTypeId = docTypeId;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
}
