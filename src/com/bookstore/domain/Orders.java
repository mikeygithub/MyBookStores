package com.bookstore.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

public class Orders implements Serializable {
		private Long oid;//id
		private String orderno;//订单号
		private Date ocreatetime;//创建时间
		private double cost;//订单金额
		private Integer status;//订单状态
		private Long ouserid;//订单对应userid
		private Set<OrderProduct> allproduct;
		public Long getOid() {
			return oid;
		}
		public void setOid(Long oid) {
			this.oid = oid;
		}
		public String getOrderno() {
			return orderno;
		}
		public void setOrderno(String orderno) {
			this.orderno = orderno;
		}
		public Date getOcreatetime() {
			return ocreatetime;
		}
		public void setOcreatetime(Date ocreatetime) {
			this.ocreatetime = ocreatetime;
		}
		public double getCost() {
			return cost;
		}
		public void setCost(double cost) {
			this.cost = cost;
		}
		public Integer getStatus() {
			return status;
		}
		public void setStatus(Integer status) {
			this.status = status;
		}
		public Long getOuserid() {
			return ouserid;
		}
		public void setOuserid(Long ouserid) {
			this.ouserid = ouserid;
		}
		public Set<OrderProduct> getAllproduct() {
			return allproduct;
		}
		public void setAllproduct(Set<OrderProduct> allproduct) {
			this.allproduct = allproduct;
		}
		

}
