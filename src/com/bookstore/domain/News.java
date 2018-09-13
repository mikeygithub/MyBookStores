package com.bookstore.domain;

public class News {
	public  Long nid;//新闻活动id
	public  String ntitle;//新闻活动title
	public String ncontext;//新闻活动正文
	public Long statics;//是否加入公告栏;
	public Long getNid() {
		return nid;
	}
	public void setNid(Long nid) {
		this.nid = nid;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNcontext() {
		return ncontext;
	}
	public void setNcontext(String ncontext) {
		this.ncontext = ncontext;
	}
	public Long getStatics() {
		return statics;
	}
	public void setStatics(Long statics) {
		this.statics = statics;
	}
	
}
