package com.withpuppy.magicCode.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DataSource {

	// Mybatis 로 연결
	private static SqlSessionFactory sqlSessionFactory;
	
	private DataSource() {}
	
	public static SqlSessionFactory getInstance() {
		String resource = "mybatis/mybatis-config.xml";
		InputStream inputStream; 
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream); // Mybatis-config.xml을 stream의 resource로 사용해서 Session을 만들어준다는 소리네!
		} catch (IOException e) {
			e.printStackTrace();
		}
		return sqlSessionFactory;
	}
	
}
