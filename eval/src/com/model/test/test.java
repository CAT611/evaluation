package com.model.test;

import java.util.List;

import com.model.entity.Stu;
import com.model.service.LoginService;
import com.model.service.impl.LoginServiceImpl;

public class test {
		public static void main(String[] args) {
			LoginService sel=new LoginServiceImpl();
			List<Stu> stus = sel.stus();
			for(Stu s:stus){
				System.out.println(s.getUserName());
			}
		}
}
