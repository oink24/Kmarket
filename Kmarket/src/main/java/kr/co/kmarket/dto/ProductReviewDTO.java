package kr.co.kmarket.dto;

public class ProductReviewDTO {
	private int revNo;
	private int prodNo;
	private String content;
	private String uid;
	private int rating;
	private String regip;
	private String rdate;

	@Override
	public String toString() {
		return "Km_product_review [revNo=" + revNo + ", prodNo=" + prodNo + ", content=" + content + ", uid=" + uid
				+ ", rating=" + rating + ", regip=" + regip + ", rdate=" + rdate + "]";
	}

	public int getRevNo() {
		return revNo;
	}

	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getRegip() {
		return regip;
	}

	public void setRegip(String regip) {
		this.regip = regip;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
}