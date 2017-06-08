package kr.bit.auction.mapper;

import java.util.List;

import kr.bit.auction.member.vo.BoardVO;
import kr.bit.auction.member.vo.PageVO;

/**
 * 
 * @author 김용재
 * @since 2017-05-24
 *
 */
public interface BoardMapper {
	public List<BoardVO> listReplys(int ART_NO);
	
	public int listTot() ;
	
	public List<BoardVO> list(PageVO vo);
	
	public BoardVO detail(int ART_NO);
	
	public int insert(BoardVO vo);
	
	public int update(BoardVO vo);
	
	public int delete(int ART_NO);
	
	public int updateQuesCD(BoardVO vo);
}
