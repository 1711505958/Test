package com.niit.entity;



public class UserJourneyId implements java.io.Serializable {


    private int uid;
    private int jid;

  

  public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getJid() {
		return jid;
	}

	public void setJid(int jid) {
		this.jid = jid;
	}
	

public UserJourneyId() {
	
	}

public UserJourneyId(int uid, int jid) {
	
		this.uid = uid;
		this.jid = jid;
	}



}


