<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Write</title>
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
		<form action="write.do" method="post">
			<tr>
				<th>이름</th>
				<td><input type="text" name="bname" size="20"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="btitle" size="80"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="bcontent" rows="30" cols="85"></textarea></td>
			</tr>						
			<tr>
				<td colspan="2"> <input type="submit" value="입력" id="button">
				&nbsp;&nbsp;<input type="button" value="목록보기" onclick="location.href='list.do'" id="button">
			</tr>		
		</form>
	</table>
	</div>
</body>
</html>