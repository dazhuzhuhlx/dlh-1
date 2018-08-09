package com.accp.spring.entity;

public class Detail {
	private String billno;
	private int billhh;
	private String goodsname;
	private int goodsnum;
	private Double goodsprice;
	private Double goodsmoneyamt;
	private int ispresent;
	public String getBillno() {
		return billno;
	}
	public void setBillno(String billno) {
		this.billno = billno;
	}
	public int getBillhh() {
		return billhh;
	}
	public void setBillhh(int billhh) {
		this.billhh = billhh;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public int getGoodsnum() {
		return goodsnum;
	}
	public void setGoodsnum(int goodsnum) {
		this.goodsnum = goodsnum;
	}
	public Double getGoodsprice() {
		return goodsprice;
	}
	public void setGoodsprice(Double goodsprice) {
		this.goodsprice = goodsprice;
	}
	public Double getGoodsmoneyamt() {
		return goodsmoneyamt;
	}
	public void setGoodsmoneyamt(Double goodsmoneyamt) {
		this.goodsmoneyamt = goodsmoneyamt;
	}
	public int getIspresent() {
		return ispresent;
	}
	public void setIspresent(int ispresent) {
		this.ispresent = ispresent;
	}
	@Override
	public String toString() {
		return "Detail [billno=" + billno + ", billhh=" + billhh + ", goodsname=" + goodsname + ", goodsnum=" + goodsnum
				+ ", goodsprice=" + goodsprice + ", goodsmoneyamt=" + goodsmoneyamt + ", ispresent=" + ispresent + "]";
	}
}
