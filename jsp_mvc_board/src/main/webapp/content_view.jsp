<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Content</title>
<style>
		*{
			margin:0; padding:0;
		}
		body{
			width: 700px;
			height: 850px;
		    margin: 0 auto;
		    position: relative;
		}

		table {
				width: 100%;
		    border-radius: 3px;
		    margin-top : 100px;
		}
		
		#left {
			width:50px
		}
		
		#button {
			padding : 3px
		}
		
		#button:hover {
		    background-color: bisque;
		}
</style>
</head>
<body>
<div id = content>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="modify.do" method="post">
			<input type="hidden" name="bid" value="${content_view.bid}">
			<tr>
				<th id="left"> 번호 </th>
				<td> ${content_view.bid} </td>
			</tr>
			<tr>
				<th> 히트 </th>
				<td> ${content_view.bhit} </td>
			</tr>
			<tr>
				<th> 이름 </th>
				<td> ${content_view.bname}</td>
			</tr>
			<tr>
				<th> 제목 </th>
				<td> ${content_view.btitle}></td>
			</tr>
			<tr>
				<th> 내용 </th>
				<td> ${content_view.bcontent}</td>
			</tr>
			<tr >
				<td colspan="2"> 
				&nbsp;&nbsp;<input type="button" value="목록보기" id="button" onclick="location.href='list.do'"> &nbsp;&nbsp; 
				<input type="button" value="삭제" onclick="location.href='delete.do?bid=${content_view.bid}'" id="button"> 
				&nbsp;&nbsp; <input type="button" value="답변" id = "button" onclick="location.href='reply_view.do?bid=${content_view.bid}'">
           
			</tr>
		</form>
	</table>
	</div>
</body>
</html>