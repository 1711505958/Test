package com.niit.entity;

public class UserJourney {

	 private UserJourneyId  id;
	 private String uName;
	 private String jName;
	
	public UserJourneyId getId() {
		return id;
	}
	public void setId(UserJourneyId id) {
		this.id = id;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getjName() {
		return jName;
	}
	public void setjName(String jName) {
		this.jName = jName;
	}
	@Override
	public String toString() {
		return "UserJourney [id=" + id + ", uName=" + uName + ", jName=" + jName + "]";
	}

}
