package com.model.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.model.dao.PowerDao;
import com.model.entity.Power;
import com.model.entity.Stu;
import com.model.service.LoginService;
import com.model.service.PowerService;
import com.model.service.impl.LoginServiceImpl;
import com.model.service.impl.PowerServiceImpl;

public class test {
		public static void main(String[] args) {
			ApplicationContext con=new ClassPathXmlApplicationContext("Spring.xml");
			PowerDao powerDao=(PowerDao)con.getBean("powerDao");
			System.out.println(powerDao);
			List<Power> list=powerDao.onelist(0);
			for(Power power:list){
				System.out.println(power);
			}
		}
}
