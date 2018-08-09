<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="Shixun-1"/>
<body>
	<div style="border: 1px solid gray; width: 700px;height: 430px;margin: auto;">
		<div style="color:gray;font-size:18px;border-bottom: 1px solid gray;height: 30px;margin: 5px 0 10px 0;">&nbsp;&nbsp;&nbsp;&nbsp;采购入库</div>
		<div style="height:20px;"></div>
		<table class="table" style="line-height: 35px;margin:0px 0 0 45px;">
		
		</table>
		<!-- display: block; -->
		<table class="kong" style="display:block;line-height: 35px;margin:0px 0 0 45px;">
				<tr>
					<td>单据编号：</td>
					<td style="width: 250px"><input class="billno_" type="text"></td>
					<td>单据日期：</td>
					<td><input class="billdate" type="text"></td>
				</tr>
				<tr>
					<td>供应商：</td>
					<td><input class="suppliername" type="text"></td>
					<td>供应商地址：</td>
					<td><input class="supplieraddress" type="text"></td>
				</tr>
				<tr>
					<td>部门：</td>
					<td><input class="department" type="text"></td>
					<td>仓库：</td>
					<td><input class="warehouse" type="text"></td>
				</tr>
				<tr>
					<td>采购人员：</td>
					<td><input class="buyer" type="text"></td>
					<td>制单人员：</td>
					<td><input class="executor" type="text"></td>
				</tr>
				<tr>
					<td>入库明细：</td>
					<td colspan="3">
						<textarea rows="8px" cols="75px" value="123456"></textarea>
					</td>
				</tr>
		</table>
		<div style="height:30px;"></div>
			<button class="cs">加载测试数据</button>
			<button>加载服务端数据</button>
			<button class="bc">保存</button>
			<button class="qk">清空</button>
		</div>
</body>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		cshisj();
		$(".table").hide();
		$(".cs").click(function(e){
			$(".kong").hide();
			$(".table").show();
		})
		$(".qk").click(function(e){
			$(".kong").show();
			$(".table").hide();
		})
		
		/* setTimeout('alert("234567")',1000); */
		
	})
	
	function cshisj() {
		$.getJSON("selectBill.action",function(data){
			$.each(data,function(){
				$(".table").empty();
				$(".table").append('<tr>\
						<td>单据编号：</td>\
						<td style="width: 250px"><input class="billno" type="text" value=" '+this.billno+' "></td>\
						<td>单据日期：</td>\
						<td><input type="text" value=" '+this.billdate+' "></td>\
					</tr>\
					<tr>\
						<td>供应商：</td>\
						<td><input type="text" value=" '+this.suppliername+' "></td>\
						<td>供应商地址：</td>\
						<td><input type="text" value=" '+this.supplieraddress+' "></td>\
					</tr>\
					<tr>\
						<td>部门：</td>\
						<td><input type="text" value=" '+this.department+' "></td>\
						<td>仓库：</td>\
						<td><input type="text" value=" '+this.warehouse+' "></td>\
					</tr>\
					<tr>\
						<td>采购人员：</td>\
						<td><input type="text" value=" '+this.buyer+' "></td>\
						<td>制单人员：</td>\
						<td><input type="text" value=" '+this.executor+' "></td>\
					</tr>\
					<tr>\
						<td>入库明细：</td>\
						<td colspan="3">\
							<textarea class="text_" rows="8px" cols="75px"></textarea>\
						</td>\
					</tr>');
			})
		})
	}
	
	$("body").on("click",".cs",function(data){
		var billno = $(".billno").val();
		alert(billno)
		$.getJSON("selectDetail.action",{billno:billno},function(data){
			$(".text").empty();
			$.each(data,function(){
				$(".text_").append(JSON.stringify(data)+",");
			})
		})
	})
	
	$("body").on("click",".bc",function(){
		 if($(".kong").is(":hidden")){
			 	/* .kong 隐藏了 */
		        alert("请把原来的数据清空再进行增加！");
		    }else{
				var json={
					billno : $(".billno_").val(),
					billdate : $(".billdate").val(),
					suppliername : $(".suppliername").val(),
					supplieraddress : $(".supplieraddress").val(),
					department : $(".department").val(),
					warehouse : $(".warehouse").val(),
					buyer : $(".buyer").val(),
					executor : $(".executor").val()
				}
				console.log(json);
				$.post("insertBill.action",json,function(data){
					alert(data)
				})
		    }
	})
</script>
<style>
	input{
		border-radius: 5px;
		border: 1px solid gray;
		height:18px;
		outline: none;
	}
	textarea{
		border-radius: 5px;
		border: 1px solid gray;
	}
	button{
		margin-left: 10px;
		border-radius: 5px;
		border: 1px solid gray;
	}
</style>
</html>
