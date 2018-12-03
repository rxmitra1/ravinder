package com.rxmitra.bean;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "excel_table",schema="rythumitra2")
public class Excel {
	
	@Id
	@Column(name = "EXCEL_ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "USER_NAME")
	private String username;
	@Column(name = "INPUT_DATE")
	private String inputDate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getInputDate() {
		return inputDate;
	}
	public void setInputDate(String string) {
		this.inputDate = string;
	}
	@Override
	public String toString() {
		return "Excel [id=" + id + ", username=" + username + ", inputDate=" + inputDate + "]";
	}
	
	
 
}