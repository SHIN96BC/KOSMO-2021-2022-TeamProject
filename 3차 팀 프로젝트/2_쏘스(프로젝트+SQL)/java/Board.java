package jeju.board.domain;

import java.sql.Date;

public class Board {
	private long bNumber;
	private String nick;
	private String subject;
	private String kategorie;
	private String tag;
	private String content;
	private long love;
	private long hate;
	private String bPhoto;
	private String bOriPhoto;
	private Date bDate;
	private Date upDate;
	private int division;
	public Board() {}
	public Board(long bNumber, String nick, String subject, String kategorie, String tag, String content, long love, long hate, String bPhoto, String bOriPhoto, Date bDate, Date upDate, int division) {
		this.bNumber = bNumber;
		this.nick = nick;
		this.subject = subject;
		this.kategorie = kategorie;
		this.tag = tag;
		this.content = content;
		this.love = love;
		this.hate = hate;
		this.bPhoto = bPhoto;
		this.bOriPhoto = bOriPhoto;
		this.bDate = bDate;
		this.upDate = upDate;
		this.division = division;
	}
	public long getBnumber() {
		return bNumber;
	}
	public void setBnumber(long bNumber) {
		this.bNumber = bNumber;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getKategorie() {
		return kategorie;
	}
	public void setKategorie(String kategorie) {
		this.kategorie = kategorie;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public long getLove() {
		return love;
	}
	public void setLove(long love) {
		this.love = love;
	}
	public long getHate() {
		return hate;
	}
	public void setHate(long hate) {
		this.hate = hate;
	}
	public String getBphoto() {
		return bPhoto;
	}
	public void setBphoto(String bPhoto) {
		this.bPhoto = bPhoto;
	}
	public String getBoriphoto() {
		return bOriPhoto;
	}
	public void setBoriphoto(String bOriPhoto) {
		this.bOriPhoto = bOriPhoto;
	}
	public Date getBdate() {
		return bDate;
	}
	public void setBdate(Date bDate) {
		this.bDate = bDate;
	}
	public Date getUpdate() {
		return upDate;
	}
	public void setUpdate(Date upDate) {
		this.upDate = upDate;
	}
	public int getDivision() {
		return division;
	}
	public void setDivision(int division) {
		this.division = division;
	}
	
}
