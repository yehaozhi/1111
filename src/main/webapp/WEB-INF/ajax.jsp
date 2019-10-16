<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>您好Springboot</title>
<!-- 引入jQuery函数类库 -->
<script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
<!-- 编辑jquery -->
<script type="text/javascript">
//js解释执行的语言
$(function(){
	/**1.get请求
                        参数说明:
           url:异步请求的地址
           data:页面传递给后台服务器的数据
                                         一般以key:value格式传递                                  
         callback:回调函数,请求执行成功后执行的动作
          type:返回格式类型 test/json/html/xml               
	**/
	alert("开始调用")
	$.get("/ajaxFindUser",{id:100},function(result){
     //  alert("ajax请求成功");
     var tr=null;
       $(result).each(function(index,user){
     //var user=result[index];
     //alert(user.name);
    	     var id=user.id;
    	     var name=user.name;
    	     var age=user.age;
    	     var sex=user.sex;
    	     tr+="<tr align='center'><td>"+id+"</td><td>"+name+"</td><td>"+age+"</td><td>"+sex+"</td></tr>"
           })
           $("#tb1").append(tr);
		},"json");
});
</script>
</head>
<body>
	<table id="tb1" border="1px" width="65%" align="center"cellspacing="0">
		<tr>
			<td colspan="6" align="center"><h3>学生信息</h3></td>
		</tr>
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>年龄</th>
			<th>性别</th>		
		</tr>
		
		<c:forEach items="${userList}" var="u">
			<tr>
				<th>${u.id}</th>
				<th>${u.name}</th>
				<th>${u.age}</th>
				<th>${u.sex}</th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>