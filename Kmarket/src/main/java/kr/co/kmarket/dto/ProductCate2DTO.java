package kr.co.kmarket.dto;

public class ProductCate2DTO {
	private int cate1;
	private int cate2;
	private String c2Name;

	private String c1Name;

	public String getC1Name() {
		return c1Name;
	}

	public void setC1Name(String c1Name) {
		this.c1Name = c1Name;
	}

	@Override
	public String toString() {
		return "Km_product_cate2 [cate1=" + cate1 + ", cate2=" + cate2 + ", c2Name=" + c2Name + "]";
	}

	public int getCate1() {
		return cate1;
	}

	public void setCate1(int cate1) {
		this.cate1 = cate1;
	}

	public int getCate2() {
		return cate2;
	}

	public void setCate2(int cate2) {
		this.cate2 = cate2;
	}

	public String getC2Name() {
		return c2Name;
	}

	public void setC2Name(String c2Name) {
		this.c2Name = c2Name;
	}
}