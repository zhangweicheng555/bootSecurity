package com.boot.kaizen;

import java.util.concurrent.ExecutionException;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.boot.kaizen.backUpFile.fileConfig.Stu;

/**
 * 测试类
 * 
 * @author a-zhangweicheng
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class KaizenApplicationTest {

	@Autowired
	private Stu stu;
	
	@Value("${myname}")
	private String myname;
	
	@Test
	public void Test() throws InterruptedException, ExecutionException {
		System.out.println(stu.getName()+"  "+stu.getAddress()+myname);
		System.out.println("----");
		Thread.sleep(1000000000009999l);
	}

}
