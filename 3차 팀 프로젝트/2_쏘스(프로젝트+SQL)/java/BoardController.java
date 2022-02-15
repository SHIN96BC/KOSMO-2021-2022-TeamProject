package jeju.board.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jeju.board.domain.Board;
import jeju.board.model.BoardService;
import oracle.net.aso.r;


@WebServlet("/jeju_board/jeju_board.do")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = request.getParameter("message");
		if(message != null) {
			message.trim();
			switch(message) {
				case "mainBoard": mainBoard(request, response); break;
				case "input": input(request, response); break;
				case "index": index(request, response); break;
				case "insert": insert(request, response); break;
				case "content": content(request, response); break;
				default: mainBoard(request, response); break;
			}
		}else {
			mainBoard(request, response);
		}
	}
	private void mainBoard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		BoardService service = BoardService.getInstance();
		long ps = getPs(request);
		long cp = getCp(request);
		long maxPage = service.getMaxPage(ps);
		long size = service.boardCountS();
		ArrayList<Long> cpList = service.getCpList(ps, cp, maxPage);
		ArrayList<Board> listAll = service.listAllS(ps, cp);
		request.setAttribute("listAll", listAll);
		request.setAttribute("ps", ps);
		request.setAttribute("size", size);
		request.setAttribute("cp", cp);
		request.setAttribute("cpList", cpList);
		request.setAttribute("maxPage", maxPage);
		
		String view = "main_board.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
	private void input(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.sendRedirect("input.jsp");
	}
	private void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.sendRedirect("../");
	}
	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		BoardService service = BoardService.getInstance();
		Board board = getParameterAll(request);
		boolean flag = false;
		if(board.getNick() != null && board.getSubject() != null && board.getKategorie() != null && board.getTag() != null && board.getContent() != null &&  board.getBphoto() != null && board.getBoriphoto() != null && board.getDivision() != -1) {
			flag = service.insertS(board);
			request.setAttribute("flag", flag);
		}else {
			request.setAttribute("flag", flag);
		}
		String view = "insert.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
	private void content(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		BoardService service = BoardService.getInstance();
		Board boardTemp = getParameterAll(request);
		long bnum = boardTemp.getBnum();
		Board board = service.contentS(bnum);
		request.setAttribute("board", board);
		
		String view = "board_content.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
	
	private Board getParameterAll(HttpServletRequest request) {
		Board board = new Board();
		String bnumStr = request.getParameter("bnum");
		String nick = request.getParameter("nick");
		String subject = request.getParameter("subject");
		String kategorie = request.getParameter("kategorie");
		String tag = request.getParameter("tag");
		String content = request.getParameter("content");
		String loveStr = request.getParameter("love");
		String hateStr = request.getParameter("hate");
		String viewsStr = request.getParameter("views");
		String bPhoto = request.getParameter("bPhoto");
		String bOriPhoto = request.getParameter("bOriPhoto");
		String divisionStr = request.getParameter("division");
		if(bnumStr != null) {
			bnumStr = bnumStr.trim();
			if(bnumStr.length() != 0) {
				try {
					long bnum = Long.parseLong(bnumStr);
					board.setBnum(bnum);
				}catch(NumberFormatException nfe) {
					board.setBnum(-1);
				}
			}else {
				board.setBnum(-1);
			}
		}else {
			board.setBnum(-1);
		}
		if(nick != null) {
			nick = nick.trim();
			if(nick.length() != 0) {
				board.setNick(nick);
			}
		}
		if(subject != null) {
			subject = subject.trim();
			if(subject.length() != 0) {
				board.setNick(subject);
			}
		}
		if(kategorie != null) {
			kategorie = kategorie.trim();
			if(kategorie.length() != 0) {
				board.setNick(kategorie);
			}
		}
		if(tag != null) {
			tag = tag.trim();
			if(tag.length() != 0) {
				board.setNick(tag);
			}
		}
		if(content != null) {
			content = content.trim();
			if(content.length() != 0) {
				board.setNick(content);
			}
		}
		if(loveStr != null) {
			loveStr = loveStr.trim();
			if(loveStr.length() != 0) {
				try {
					long love = Long.parseLong(loveStr);
					board.setLove(love);
				}catch(NumberFormatException nfe) {
					board.setLove(-1);
				}
			}else {
				board.setLove(-1);
			}
		}else {
			board.setLove(-1);
		}
		if(hateStr != null) {
			hateStr = hateStr.trim();
			if(hateStr.length() != 0) {
				try {
					long hate = Long.parseLong(hateStr);
					board.setHate(hate);
				}catch(NumberFormatException nfe) {
					board.setHate(-1);
				}
			}else {
				board.setHate(-1);
			}
		}else {
			board.setHate(-1);
		}
		if(viewsStr != null) {
			viewsStr = viewsStr.trim();
			if(viewsStr.length() != 0) {
				try {
					long views = Long.parseLong(viewsStr);
					board.setViews(views);
				}catch(NumberFormatException nfe) {
					board.setViews(-1);
				}
			}else {
				board.setViews(-1);
			}
		}else {
			board.setViews(-1);
		}
		if(bPhoto != null) {
			bPhoto = bPhoto.trim();
			if(bPhoto.length() != 0) {
				board.setNick(bPhoto);
			}
		}
		if(bOriPhoto != null) {
			bOriPhoto = bOriPhoto.trim();
			if(bOriPhoto.length() != 0) {
				board.setNick(bOriPhoto);
			}
		}
		if(divisionStr != null) {
			divisionStr = divisionStr.trim();
			if(divisionStr.length() != 0) {
				try {
					int division = Integer.parseInt(divisionStr);
					board.setDivision(division);
				}catch(NumberFormatException nfe) {
					board.setDivision(-1);
				}
			}else {
				board.setDivision(-1);
			}
		}else {
			board.setDivision(-1);
		}
		return board;
	}
	private long getPs(HttpServletRequest request){
		long ps = -1;
		String psStr = request.getParameter("ps");
		if(psStr != null){
			psStr = psStr.trim();
			if(psStr.length() != 0){
				try{
					ps = Integer.parseInt(psStr);
					return ps;
				}catch(NumberFormatException nfe){
				}
			}
		}
		return ps;
	}
	private long getCp(HttpServletRequest request){
		long cp = -1;
		String cpStr = request.getParameter("cp");
		if(cpStr != null){
			cpStr = cpStr.trim();
			if(cpStr.length() != 0){
				try{
					cp = Integer.parseInt(cpStr);
					return cp;
				}catch(NumberFormatException nfe){
				}
			}
		}
		return cp;
	}
}
