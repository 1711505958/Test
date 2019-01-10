package com.niit.entity;

import java.io.Serializable;

public class Journey  implements Serializable
{
 /**
	 * 
	 */
private Integer spId;
 private String spName;
 private String spAddress;
 private String spDate;
 private String spContent;
public Integer getSpId() {
	return spId;
}
public void setSpId(Integer spId) {
	this.spId = spId;
}
public String getSpName() {
	return spName;
}
public void setSpName(String spName) {
	this.spName = spName;
}
public String getSpAddress() {
	return spAddress;
}
public void setSpAddress(String spAddress) {
	this.spAddress = spAddress;
}
public String getSpDate() {
	return spDate;
}
public void setSpDate(String spDate) {
	this.spDate = spDate;
}
public String getSpContent() {
	return spContent;
}
public void setSpContent(String spContent) {
	this.spContent = spContent;
}

@Override
public String toString() {
	return "Journey [spId=" + spId + ", spName=" + spName + ", spAddress=" + spAddress + ", spDate=" + spDate
			+ ", spContent=" + spContent +  "]";
}


 
 
	
}
