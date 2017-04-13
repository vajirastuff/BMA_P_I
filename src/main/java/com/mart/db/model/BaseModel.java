package com.mart.db.model;

import java.util.Date;

public abstract class BaseModel {

	private Byte status;
	private String remark;
	private Integer sort_order;
	private Date insert_datetime;
	private String insert_user_id;
	private Date update_datetime;
	private Long update_user_id;

	public Byte getStatus() {
		return status;
	}

	public void setStatus(Byte status) {
		this.status = status;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getSort_order() {
		return sort_order;
	}

	public void setSort_order(Integer sort_order) {
		this.sort_order = sort_order;
	}

	public Date getInsert_datetime() {
		return insert_datetime;
	}

	public void setInsert_datetime(Date insert_datetime) {
		this.insert_datetime = insert_datetime;
	}

	public String getInsert_user_id() {
		return insert_user_id;
	}

	public void setInsert_user_id(String insert_user_id) {
		this.insert_user_id = insert_user_id;
	}

	public Date getUpdate_datetime() {
		return update_datetime;
	}

	public void setUpdate_datetime(Date update_datetime) {
		this.update_datetime = update_datetime;
	}

	public Long getUpdate_user_id() {
		return update_user_id;
	}

	public void setUpdate_user_id(Long update_user_id) {
		this.update_user_id = update_user_id;
	}

}
