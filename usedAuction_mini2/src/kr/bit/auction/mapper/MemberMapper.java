package kr.bit.auction.mapper;

import kr.bit.auction.member.vo.MemberGenericVO;

public interface MemberMapper {
	public void insertMember(MemberGenericVO GenericVO) throws Exception;
	public int duplicateID(String id);
	
	public int newMember(MemberGenericVO vo);
	
	public int newComMember(MemberGenericVO vo);
	
	public int newPriMember(MemberGenericVO vo);
	
	public int newMgrMember(MemberGenericVO vo);
	
	public void memberInfo();
}
