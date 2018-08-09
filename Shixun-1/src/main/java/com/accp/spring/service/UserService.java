package com.accp.spring.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.accp.spring.entity.Bill;
import com.accp.spring.entity.Detail;
import com.accp.spring.mapper.UserMapper;

@Service
public class UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	public List<Bill> selectBill(){
		return userMapper.selectBill();
	}
	
	public List<Detail> selectDetail(String billno){
		return userMapper.selectDetail(billno);
	}
	
	public int insertBill(Bill bill) {
		
		/*bill.getBillno();*/
		
		/*Bill bill1 = new Bill();*/
		
		return userMapper.insertBill(bill);
	}
	
}
