package com.accp.spring.controller;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.accp.spring.entity.Bill;
import com.accp.spring.entity.Detail;
import com.accp.spring.service.UserService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
//	将一条本地数据填充到表单
	@ResponseBody
	@RequestMapping("/selectBill")
	public String selectBill(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		List<Bill> bill = userService.selectBill();
		String json = JSON.toJSONString(bill);
		System.out.println(json);
		return json;
	}
	
	@ResponseBody
	@RequestMapping("/selectDetail")
	public String selectDetail(String billno, HttpServletResponse resp){
		resp.setContentType("text/html;charset=utf-8");
		List<Detail> detail = userService.selectDetail(billno);
		String json = JSON.toJSONString(detail);
		System.err.println(json);
		return json;
	}
	
//	增加一条数据Bill
	@ResponseBody
	@RequestMapping("/insertBill")
	public int insertBill(Bill bill) {
		System.out.println(JSON.toJSONString(bill));
		return userService.insertBill(bill);
	}
	
	
}
