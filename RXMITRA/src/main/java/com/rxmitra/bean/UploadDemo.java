package com.rxmitra.bean;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "upload_demo", schema = "rxmitra2")
public class UploadDemo {
	
	@Column(name="UPLOAD_DEMO_ID")
	@Id
	private Integer uploadDemoId;
	@Column(name="DEMO_IMAGE")
	private byte[] demoImage;
	
	public Integer getUploadDemoId() {
		return uploadDemoId;
	}
	public void setUploadDemoId(Integer uploadDemoId) {
		this.uploadDemoId = uploadDemoId;
	}
	public byte[] getDemoImage() {
		return demoImage;
	}
	
	@Override
	public String toString() {
		return "UploadDemo [uploadDemoId=" + uploadDemoId + ", demoImage=" + Arrays.toString(demoImage) + "]";
	}
	
	

}
