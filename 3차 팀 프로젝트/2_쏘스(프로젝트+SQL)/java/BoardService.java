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
	public ArrayList<Board> listAllS(long ps, long cp){
		long psTemp = -1;
		long cpTemp = -1;
		
		if(ps == -1) psTemp = 5;
		else psTemp = ps;
		if(cp == -1) cpTemp = 1;
		else cpTemp = cp;
		
		long min = psTemp*(cpTemp-1);
		long max = psTemp*cpTemp;
		return repository.listAll(max, min);
	}
	public boolean insertS(Board board) {
		String tag = tagSet(board);
		if(tag != null) {
			board.setTag(tag);
		}
		return repository.insert(board);
	}
	private String tagSet(Board board) {
		String tag = null;
		String tagTemp = board.getTag();
		if(tagTemp != null) {
			String[] tagList = tagTemp.split(" ");
			
			for(int i=0; i<tagList.length; i++) {
				if(tagList[i].trim().length() == 0) continue;
				if(!tagList[i].startsWith("#")) {
					tag += "#"+tagList[i]+" ";
				}else {
					if(tagList[i].trim().length() == 1) continue;
					tag += tagList[i]+" ";
				}
			}
		}
		return tag;
	}
	public long boardCountS() {
		return repository.boardCount();
	}
	public ArrayList<Long> getCpList(long ps, long cp, long maxPage){
		ArrayList<Long> cpList = new ArrayList<Long>();
		long loop = -1;
		long start = 1;
		long psTemp = -1;
		long cpTemp = -1;
		long maxPageTemp = -1;
		
		if(ps == -1) psTemp = 5;
		else psTemp = ps;
		
		if(cp == -1) cpTemp = 0;
		else cpTemp = cp;
		
		if(maxPage < 1) maxPageTemp = 1;
		else maxPageTemp = maxPage;
		
		if(cpTemp/psTemp != 0) {
			loop = cpTemp/psTemp+1;
			if(psTemp*(loop-1) == cpTemp){
				start = psTemp*(loop-2)+1;
				loop -= 1;
			}else{
				start = psTemp*(loop-1)+1;
			}
		}else {
			loop = 1;
		}
		for(long i=start; i<=psTemp*loop; i++) {
			if(i > maxPageTemp) break;
			cpList.add(i);
		}
		return cpList;
	}
	public long getMaxPage(long ps) {
		long maxPage = -1;
		long psTemp = -1;
		if(ps == -1) {
			psTemp = 5;
		}else {
			psTemp = ps;
		}
		long boardCount = boardCountS();
		maxPage = boardCount/psTemp;
		if(boardCount != psTemp*maxPage) {
			maxPage = boardCount/psTemp+1;
		}
		return maxPage;
	}
}
