package jeju.reply.domin;

public class Reply {
	private long rnum;
	private int classfi;
	private String nick;
	private String content;
	private long love;
	private long hate;
	private long page;
	private long lev;
	private long turn;
	public Reply() {}
	public Reply(long rnum, int classfi, String nick, String content, long love, long hate, long page, long lev, long turn) {
		this.rnum = rnum;
		this.classfi = classfi;
		this.nick = nick;
		this.content = content;
		this.love = love;
		this.hate = hate;
		this.page = page;
		this.lev = lev;
		this.turn = turn;
	}
	public long getRnum() {
		return rnum;
	}
	public void setRnum(long rnum) {
		this.rnum = rnum;
	}
	public int getClassfi() {
		return classfi;
	}
	public void setClassfi(int classfi) {
		this.classfi = classfi;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
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
	public long getPage() {
		return page;
	}
	public void setPage(long page) {
		this.page = page;
	}
	public long getLev() {
		return lev;
	}
	public void setLev(long lev) {
		this.lev = lev;
	}
	public long getTurn() {
		return turn;
	}
	public void setTurn(long turn) {
		this.turn = turn;
	}
}
