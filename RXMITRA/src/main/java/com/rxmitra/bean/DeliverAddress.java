package com.rxmitra.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="deliver_address",schema="rxmitra2")
public class DeliverAddress {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="DEL_ADDRS_ID")
	private Integer deliverAddressId;
	@Column(name="DELIVER_ADDRESS")
	private String deliverAddress;
	@Column(name="DEL_ADDRS_FILE")
	private byte[] deliverAddressFile;
	
	
	public Integer getDeliverAddressId() {
		return deliverAddressId;
	}
	public void setDeliverAddressId(Integer deliverAddressId) {
		this.deliverAddressId = deliverAddressId;
	}
	public String getDeliverAddress() {
		return deliverAddress;
	}
	public void setDeliverAddress(String deliverAddress) {
		this.deliverAddress = deliverAddress;
	}
	public byte[] getDeliverAddressFile() {
		return deliverAddressFile;
	}
	public void setDeliverAddressFile(byte[] deliverAddressFile) {
		this.deliverAddressFile = deliverAddressFile;
	}
	

	@Override
	public String toString() {
		return "DeliverAddress [deliverAddressId=" + deliverAddressId + ", deliverAddress=" + deliverAddress
				+ ", deliverAddressFile=" + deliverAddressFile + "]";
	}

}
