package com.itbank.model.vo;

/*
	idx         number          default account_seq.nextval constraint account_idx primary key,
	userid      varchar2(100)   unique not null,
	userpw      varchar2(100)   not null,
	nick        varchar2(100)   unique not null,
	email       varchar2(300)   unique not null,
	join_date   date            default sysdate,
	isRoot      char(1)         default 'n'
*/

import java.sql.Date;

public class AccountVO {
	private int idx;
	private String userid, userpw;
	private String nick, email;
	private Date join_date;
	private boolean isRoot;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}

	public boolean getisRoot() {
		return isRoot;
	}

	public void setisRoot(boolean isRoot) {
		this.isRoot = isRoot;
	}
	

}