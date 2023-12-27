package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MatchingDAO {

	SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();

	public List<Match> allMatchDate(String date) {
		List<Match> cnt = null;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			cnt = sqlSession.selectList("com.smhrd.database.MatchMapper.allMatchDate", date);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
	}
		return cnt;
	}
	
	public int sendMatching(Matching vo) {
		int cnt = 0;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			cnt = sqlSession.insert("com.smhrd.database.MatchMapper.sendMatching", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public List<Matching> allMatching() {
		List<Matching> matching = null;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			matching = sqlSession.selectList("com.smhrd.database.MatchMapper.allMatching");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return matching;
	}
	
	public int checkMatching(Matching matching) {
		int cnt = 0;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			cnt = sqlSession.insert("com.smhrd.database.MatchMapper.checkMatching", matching);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public int delAllMatching(int mc_index) {
		int cnt = 0;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			cnt = sqlSession.insert("com.smhrd.database.MatchMapper.delAllMatching", mc_index);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public int delMatching(Matching matching) {
		int cnt = 0;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			cnt = sqlSession.insert("com.smhrd.database.MatchMapper.delMatching", matching);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public int delMatch(int mc_index) {
		int cnt = 0;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			cnt = sqlSession.insert("com.smhrd.database.MatchMapper.delMatching", mc_index);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	public List<Matching> receiveMatching(String id) {
		List<Matching> matching = null;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			matching = sqlSession.selectList("com.smhrd.database.MatchMapper.receiveMatching",id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return matching;
	}
	
	public List<Matching> feedbackMatching(String id) {
		List<Matching> matching = null;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			matching = sqlSession.selectList("com.smhrd.database.MatchMapper.feedback_w",id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return matching;
	}
	
	public List<Matching> feedbackMatching2(String id) {
		List<Matching> matching = null;
		SqlSession sqlSession = sqlsessionFactory.openSession(true);
		try {
			matching = sqlSession.selectList("com.smhrd.database.MatchMapper.feedback_c",id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return matching;
	}

}
