package jeju.board.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jeju.board.domain.Board;
import jeju.board.model.BoardService;


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
				default: mainBoard(request, response); break;
			}
		}else {
			mainBoard(request, response);
		}
	}
	private void mainBoard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		BoardService service = BoardService.getInstance();
		ArrayList<Board> listAll = service.listAllS();
		request.setAttribute("listAll", listAll);
		
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

	}
}
