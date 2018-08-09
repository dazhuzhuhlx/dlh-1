package com.accp.spring.mapper;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.accp.spring.entity.Bill;
import com.accp.spring.entity.Detail;

public interface UserMapper {
	
	List<Bill> selectBill();
	
	List<Detail> selectDetail(@Param("billno")String billno);
	
	int insertBill(Bill bill);
}
