package com.bookstore.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

public class Orders implements Serializable {
		private Long oId;//id
		private String orderNo;//订单号
		private Date ocreateTime;//创建时间
		private double cost;//订单金额
		private Integer status;//订单状态
		private Long oUserId;//订单对应userid
		private Set<OrderProduct> allProduct;
		public Long getoId() {
			return oId;
		}
		public void setoId(Long oId) {
			this.oId = oId;
		}
		public String getOrderNo() {
			return orderNo;
		}
		public void setOrderNo(String orderNo) {
			this.orderNo = orderNo;
		}
		public Date getOcreateTime() {
			return ocreateTime;
		}
		public void setOcreateTime(Date ocreateTime) {
			this.ocreateTime = ocreateTime;
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
		public Long getoUserId() {
			return oUserId;
		}
		public void setoUserId(Long oUserId) {
			this.oUserId = oUserId;
		}
		public Set<OrderProduct> getAllProduct() {
			return allProduct;
		}
		public void setAllProduct(Set<OrderProduct> allProduct) {
			this.allProduct = allProduct;
		}

}
