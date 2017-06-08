package kr.bit.auction.mapper;

import java.util.List;

import kr.bit.auction.vo.AuctionVO;
import kr.bit.auction.vo.BidVO;
import kr.bit.auction.vo.CommentsVO;
import kr.bit.auction.vo.FileAuctionVO;
import kr.bit.auction.vo.MyAuctionVO;
import kr.bit.auction.vo.MyBidVO;
import kr.bit.auction.vo.ProductCategoryVO;
import kr.bit.auction.vo.SelectMenuVO;

/**
 * 
 * @author 김용재
 * @since 2017-05-24
 *
 */
public interface AuctionMapper {
	
	public List<ProductCategoryVO> selectProductCategory() throws Exception;

	public List<AuctionVO> selectAfootAuction(SelectMenuVO select);

	public int insertAuction(AuctionVO auction);

	public int insertFileAuction(FileAuctionVO files);

	public List<MyBidVO> selectMyBid(int mbNo);

	public List<MyAuctionVO> selectMyAuction(int mbNo);

	public List<CommentsVO> selectComments(int acNo);

	public int insertComment(CommentsVO comment);

	public List<BidVO> selectBidHistory(int acNo);

	public int selectCurrentPrice(int acNo);
	
	public int insertBid(BidVO bid);
	
	public List<AuctionVO> selectTopAuction(SelectMenuVO select);
	
	public List<AuctionVO> selectTop3Auction();
	
	public int updateBatBid();
	
	public int updateBatAuction();
	
	public int cancelAuction(int acNo);
	
}
