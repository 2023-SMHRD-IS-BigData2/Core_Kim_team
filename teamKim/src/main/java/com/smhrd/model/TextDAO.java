package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class TextDAO {

   static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
   
   // 메시지 보내기 기능
   public int insertText(Text dto) {
      SqlSession session = sqlSessionFactory.openSession(true);
      int row = session.insert("insertText", dto);
      session.close();
      
      return row;
   }
   
   // 나에게 온 메시지 조회 기능
   public static List<Text> showText(String recipient){
      SqlSession session = sqlSessionFactory.openSession(true);
      System.out.println("메시지 조회 기능 : "+ recipient);
      List<Text> m_list = session.selectList("showText", recipient);
      session.close();
      return m_list;
   }

   public int deleteText(int num) {
      SqlSession session = sqlSessionFactory.openSession(true);
      int cnt = session.delete("deleteText", num);
      session.close();
      return cnt;
   }

   public int deleteMessageAll(String email) {
      SqlSession session = sqlSessionFactory.openSession(true);
      int cnt = session.delete("deleteMessageAll", email);
      session.close();
      return cnt;
   }
   
   
   
   
}