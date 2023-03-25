package edu.kh.community.member.model.service;

import static edu.kh.community.common.JDBCTemplate.close;
import static edu.kh.community.common.JDBCTemplate.commit;
import static edu.kh.community.common.JDBCTemplate.getConnection;
import static edu.kh.community.common.JDBCTemplate.rollback;

import java.sql.Connection;

import edu.kh.community.member.model.dao.MemberDAO;
import edu.kh.community.member.model.vo.Member;

public class MemberService {

	private MemberDAO dao = new MemberDAO();

	/** 회원 정보 조회 Service
	 * @param memberEmail
	 * @return
	 */
	public Member selectOne(String memberEmail) throws Exception{
		Connection conn = getConnection();

		Member member = dao.selectOne(conn, memberEmail);

		close(conn);

		return member;
	}

	/** 인증번호 DB 추가 service
	 * @param inputEmail
	 * @param cNumber
	 * @return
	 * @throws Exception
	 */
	public int insertCertification(String inputEmail, String cNumber) throws Exception{
	Connection conn = getConnection();


	//1) 입력한 이메일과 일치하는 값이 있으면 수정 (update)

	int result = dao.updateCertification(conn, inputEmail,cNumber);


	//2) 입력한 이메일이 없는경우 -> 처음으로 인증번호를 발급 받음 -> 삽입 (insert)

	if(result ==0) {
		result = dao.inserCertidication(conn, inputEmail,cNumber);
	}
	if(result> 0 ) commit(conn);
	else			rollback(conn);

	close(conn);




			return result;
	}

}
