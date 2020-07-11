package com.SpringBasic;

public class Empolyee {
	int eid;
	String name;
	String address;

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Empolyee [eid=" + eid + ", name=" + name + ", address=" + address + ", getEid()=" + getEid()
				+ ", getName()=" + getName() + ", getAddress()=" + getAddress() +"]";
	}
}
