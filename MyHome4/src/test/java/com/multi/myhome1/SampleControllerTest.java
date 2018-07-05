package com.multi.myhome1;

import javax.inject.Inject;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

//JUnit 라는 테스트 플러그인에서 돌리겠다 
@RunWith(SpringJUnit4ClassRunner.class)
//웹어플리케이션관련 
@WebAppConfiguration
//xml(스프링 설정파일) 있는 위치 지정 
@ContextConfiguration(
   locations= 
{"file:src/main/webapp/WEB-INF/spring/**/*.xml"})

public class SampleControllerTest {
	private static final Logger logger=
			LoggerFactory.getLogger(
					SampleTestController.class);
	//JUnit 가 WebApplicationContext객체 
	//알아서 넣어라, 
	@Inject
	private WebApplicationContext wac;
	
	//웹 url호출해서 테스트가능하게 하는 클래스 
	private MockMvc mockMvc;
	
	//함수 호출 전에 불림 
	@Before
	public void setup()
	{
		this.mockMvc=MockMvcBuilders.webAppContextSetup(this.wac).build();
		logger.info("setup ...................");
	}
	
	@Test
	public void testDoA() throws Exception {
		mockMvc.perform(
		 MockMvcRequestBuilders.get("/doA"));
		mockMvc.perform(
		 MockMvcRequestBuilders.post("/doB"));
		//mockMvc.perform(MockMvcRequestBuilders.post("/sample/sam4.mt"));
		mockMvc.perform(
MockMvcRequestBuilders.get("/doC.mt?x=4&y=10&msg=hello"));
	
	}
}
