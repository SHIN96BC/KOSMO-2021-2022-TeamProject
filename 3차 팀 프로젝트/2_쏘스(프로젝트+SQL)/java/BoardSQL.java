package jeju.board.model;

class BoardSQL {
	static final String LIST_ALL = "select * from BOARD order by B_NUM desc";
	static final String INSERT = "insert into BOARD values(BOARD_SEQ.nextval, ?, ?, ?, ?, ?, 0, 0, 0, ?, ?, SYSDATE, SYSDATE, ?)";
	static final String DELETE = "delete from BOARD where B_NUM=?";
	static final String UPDATE = "update BOARD set SUBJECT=?, CONTENT=?, B_PHOTO=?, B_ORI_PHOTO=?, UP_DATE=SYSDATE where B_NUM=?";
	static final String VIEW_UP = "update BOARD set VIEWS=? where B_NUM=?";
	static final String LOVE_UP = "update BOARD set LOVE=? where B_NUM=?";
	static final String HATE_UP = "update BOARD set HATE=? where B_NUM=?";
}
