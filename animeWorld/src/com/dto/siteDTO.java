package com.dto;

public class siteDTO {

	private int id;
	private String name;
	private String link;
	private int alexa;
	private String country;
	
	public siteDTO(){}
	
	siteDTO(int id,String name,String link,int alexa,String country){
		this.id = id;
		this.name = name;
		this.link = link;
		this.alexa = alexa;
		this.country = country;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public int getAlexa() {
		return alexa;
	}

	public void setAlexa(int alexa) {
		this.alexa = alexa;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
}
