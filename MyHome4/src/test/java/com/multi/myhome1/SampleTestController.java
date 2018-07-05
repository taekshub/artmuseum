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

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration 
@ContextConfiguration(
		locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class SampleTestController {
	private static final Logger logger=
			LoggerFactory.getLogger(
					SampleTestController.class);
	@Inject
	private WebApplicationContext wac;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup()
	{
		this.mockMvc=MockMvcBuilders.webAppContextSetup(this.wac).build();
		logger.info("setup ...................");
	}
	
	@Test
	public void testDoA() throws Exception {
		mockMvc.perform(MockMvcRequestBuilders.get("/doA"));
		mockMvc.perform(MockMvcRequestBuilders.post("/doA"));
		//mockMvc.perform(MockMvcRequestBuilders.post("/sample/sam4.mt"));
		mockMvc.perform(MockMvcRequestBuilders.get("/doC.mt?x=4&y=10&msg=hello"));
		
		
		
	}
}
