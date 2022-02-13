package jeju.board.model;

import java.util.ArrayList;

import jeju.board.domain.Board;

public class BoardService {
	public static final BoardService INSTANCE = new BoardService();
	private BoardRepository repository;
	private BoardService() {
		repository = new BoardRepository();
	}
	public static BoardService getInstance() {
		return INSTANCE;
	}
	public ArrayList<Board> listAllS(){
		return repository.listAll();
	}
	
}
