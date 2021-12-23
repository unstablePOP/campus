package com.campus.reservation.model.vo;

public class CampingArea {
	//bussinessTBL
	private int business_no;
	private String business_name;
	private char business_phone;
	private String business_address;
	private String bussiness_email;
	private String bussiness_url;
	private char businewss_withdrawal;
	//campTBL
	private int camp_seq;
	private String camp_no;
	private String camp_name;
	private String camp_type;
	private int camp_po;
	private int camp_maxpo;
	private long camp_price;
	private int checkin;
	private int checkout;
	private String reserv_notice;
	private String reserv_info;
	
	
	
	
	public CampingArea() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public CampingArea(int business_no, String business_name, char business_phone, String business_address,
			String bussiness_email, String bussiness_url, char businewss_withdrawal, int camp_seq, String camp_no,
			String camp_name, String camp_type, int camp_po, int camp_maxpo, long camp_price, int checkin, int checkout,
			String reserv_notice, String reserv_info) {
		super();
		this.business_no = business_no;
		this.business_name = business_name;
		this.business_phone = business_phone;
		this.business_address = business_address;
		this.bussiness_email = bussiness_email;
		this.bussiness_url = bussiness_url;
		this.businewss_withdrawal = businewss_withdrawal;
		this.camp_seq = camp_seq;
		this.camp_no = camp_no;
		this.camp_name = camp_name;
		this.camp_type = camp_type;
		this.camp_po = camp_po;
		this.camp_maxpo = camp_maxpo;
		this.camp_price = camp_price;
		this.checkin = checkin;
		this.checkout = checkout;
		this.reserv_notice = reserv_notice;
		this.reserv_info = reserv_info;
	}
	
	
	
	
	public int getBusiness_no() {
		return business_no;
	}
	public void setBusiness_no(int business_no) {
		this.business_no = business_no;
	}
	public String getBusiness_name() {
		return business_name;
	}
	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}
	public char getBusiness_phone() {
		return business_phone;
	}
	public void setBusiness_phone(char business_phone) {
		this.business_phone = business_phone;
	}
	public String getBusiness_address() {
		return business_address;
	}
	public void setBusiness_address(String business_address) {
		this.business_address = business_address;
	}
	public String getBussiness_email() {
		return bussiness_email;
	}
	public void setBussiness_email(String bussiness_email) {
		this.bussiness_email = bussiness_email;
	}
	public String getBussiness_url() {
		return bussiness_url;
	}
	public void setBussiness_url(String bussiness_url) {
		this.bussiness_url = bussiness_url;
	}
	public char getBusinewss_withdrawal() {
		return businewss_withdrawal;
	}
	public void setBusinewss_withdrawal(char businewss_withdrawal) {
		this.businewss_withdrawal = businewss_withdrawal;
	}
	public int getCamp_seq() {
		return camp_seq;
	}
	public void setCamp_seq(int camp_seq) {
		this.camp_seq = camp_seq;
	}
	public String getCamp_no() {
		return camp_no;
	}
	public void setCamp_no(String camp_no) {
		this.camp_no = camp_no;
	}
	public String getCamp_name() {
		return camp_name;
	}
	public void setCamp_name(String camp_name) {
		this.camp_name = camp_name;
	}
	public String getCamp_type() {
		return camp_type;
	}
	public void setCamp_type(String camp_type) {
		this.camp_type = camp_type;
	}
	public int getCamp_po() {
		return camp_po;
	}
	public void setCamp_po(int camp_po) {
		this.camp_po = camp_po;
	}
	public int getCamp_maxpo() {
		return camp_maxpo;
	}
	public void setCamp_maxpo(int camp_maxpo) {
		this.camp_maxpo = camp_maxpo;
	}
	public long getCamp_price() {
		return camp_price;
	}
	public void setCamp_price(long camp_price) {
		this.camp_price = camp_price;
	}
	public int getCheckin() {
		return checkin;
	}
	public void setCheckin(int checkin) {
		this.checkin = checkin;
	}
	public int getCheckout() {
		return checkout;
	}
	public void setCheckout(int checkout) {
		this.checkout = checkout;
	}
	public String getReserv_notice() {
		return reserv_notice;
	}
	public void setReserv_notice(String reserv_notice) {
		this.reserv_notice = reserv_notice;
	}
	public String getReserv_info() {
		return reserv_info;
	}
	public void setReserv_info(String reserv_info) {
		this.reserv_info = reserv_info;
	}
	
	
	
	
}
