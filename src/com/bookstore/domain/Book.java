package com.bookstore.domain;

import java.io.Serializable;

public class Book  implements Serializable {
	private Long bid;//编号
	private String bname;//书名
	private String bauthor;//作者
	private double bprice;//原价
	private double bpress;//折扣
	private Integer bnumber;//存货
	private String bdescription;//简介
	private String bimage;//封面
	private Long typeid;//类型
	private Integer specialoffer;//是否是特价商品
	private Integer hotbook;//是否为热销售价
	public Long getBid() {
		return bid;
	}
	public void setBid(Long bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBauthor() {
		return bauthor;
	}
	public void setBauthor(String bauthor) {
		this.bauthor = bauthor;
	}
	public double getBprice() {
		return bprice;
	}
	public void setBprice(double bprice) {
		this.bprice = bprice;
	}
	public double getBpress() {
		return bpress;
	}
	public void setBpress(double bpress) {
		this.bpress = bpress;
	}
	public Integer getBnumber() {
		return bnumber;
	}
	public void setBnumber(Integer bnumber) {
		this.bnumber = bnumber;
	}
	public String getBdescription() {
		return bdescription;
	}
	public void setBdescription(String bdescription) {
		this.bdescription = bdescription;
	}
	public String getBimage() {
		return bimage;
	}
	public void setBimage(String bimage) {
		this.bimage = bimage;
	}
	public Long getTypeid() {
		return typeid;
	}
	public void setTypeid(Long typeid) {
		this.typeid = typeid;
	}
	public Integer getSpecialoffer() {
		return specialoffer;
	}
	public void setSpecialoffer(Integer specialoffer) {
		this.specialoffer = specialoffer;
	}
	public Integer getHotbook() {
		return hotbook;
	}
	public void setHotbook(Integer hotbook) {
		this.hotbook = hotbook;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bauthor == null) ? 0 : bauthor.hashCode());
		result = prime * result + ((bdescription == null) ? 0 : bdescription.hashCode());
		result = prime * result + ((bid == null) ? 0 : bid.hashCode());
		result = prime * result + ((bimage == null) ? 0 : bimage.hashCode());
		result = prime * result + ((bname == null) ? 0 : bname.hashCode());
		result = prime * result + ((bnumber == null) ? 0 : bnumber.hashCode());
		long temp;
		temp = Double.doubleToLongBits(bpress);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(bprice);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((hotbook == null) ? 0 : hotbook.hashCode());
		result = prime * result + ((specialoffer == null) ? 0 : specialoffer.hashCode());
		result = prime * result + ((typeid == null) ? 0 : typeid.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Book other = (Book) obj;
		if (bauthor == null) {
			if (other.bauthor != null)
				return false;
		} else if (!bauthor.equals(other.bauthor))
			return false;
		if (bdescription == null) {
			if (other.bdescription != null)
				return false;
		} else if (!bdescription.equals(other.bdescription))
			return false;
		if (bid == null) {
			if (other.bid != null)
				return false;
		} else if (!bid.equals(other.bid))
			return false;
		if (bimage == null) {
			if (other.bimage != null)
				return false;
		} else if (!bimage.equals(other.bimage))
			return false;
		if (bname == null) {
			if (other.bname != null)
				return false;
		} else if (!bname.equals(other.bname))
			return false;
		if (bnumber == null) {
			if (other.bnumber != null)
				return false;
		} else if (!bnumber.equals(other.bnumber))
			return false;
		if (Double.doubleToLongBits(bpress) != Double.doubleToLongBits(other.bpress))
			return false;
		if (Double.doubleToLongBits(bprice) != Double.doubleToLongBits(other.bprice))
			return false;
		if (hotbook == null) {
			if (other.hotbook != null)
				return false;
		} else if (!hotbook.equals(other.hotbook))
			return false;
		if (specialoffer == null) {
			if (other.specialoffer != null)
				return false;
		} else if (!specialoffer.equals(other.specialoffer))
			return false;
		if (typeid == null) {
			if (other.typeid != null)
				return false;
		} else if (!typeid.equals(other.typeid))
			return false;
		return true;
	}
	
	
}
