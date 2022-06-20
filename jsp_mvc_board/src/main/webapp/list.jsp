<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>List</title>
<style>
		*{
			margin:0; padding:0;
		}
		
		a {
		  text-decoration: none;
		}
		
		body{
			
			width: 700px;
			height: 850px;
		    margin: 0 auto;
		    position: relative;
		}
		
		#content {
		margin-top : 100px;
		}
		
		table {
		width: 100%;
		border-top: 1px solid #444444;
    	border-collapse: collapse;
		}

	 	th, td {
    	border-bottom: 1px solid #444444;
    	padding: 10px;
    	
    	}
		
		
		#write_button {
		    padding: 3px;
		
		}
		
		#write_button:hover {
		    background-color: bisque;
		}
</style>
</head>
<body>
<div id = content>
	<table width="500" border="1">
		<tr id="list_first">
			<th id="num">번호</th>
			<th id="name">이름</th>
			<th id="title">제목</th>
			<th id="date">날짜</th>
			<th id="view">히트</th>
		</tr>
	
        <!--이때 list는 BListCommand에서 메모리에 올린 list를 뜻함. 포워딩시까지 살아있으므로-->
        <!--forEach문을 이용해 데이터를 꺼낼 수 있다.-->
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.bid}</td>
				<td>${dto.bname}</td>
				<td>
				 	<!--bindent : 가로 (댓글이 보이는 순서 때문에 들어간 것)-->
					<c:forEach begin="1" end="${dto.bindent}">[Re]</c:forEach>
					<a href="content_view.do?bid=${dto.bid}">${dto.btitle}</a>
                   
				</td>
				<td>${dto.bdate}</td>
				<td>${dto.bhit}</td>				
			</tr>
		</c:forEach>
</table>
</div>

<div id="foot">
		<tr>
			<input type="button" value="글 작성" id="write_button" onclick="location.href='write_view.do'">
		</tr>
</div>
</body>
</html>