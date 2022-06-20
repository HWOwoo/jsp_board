<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reply</title>
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
			padding: 3px;
		}
		
		#button:hover {
		    background-color: bisque;
		}
</style>
</head>
<body>
<div id = content>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<form action="reply.do" method="post">
			<input type="hidden" name="bid" value="${reply_view.bid}">
			<input type="hidden" name="bgroup" value="${reply_view.bgroup}">
			<input type="hidden" name="bstep" value="${reply_view.bstep}">
			<input type="hidden" name="bindent" value="${reply_view.bindent}">
			<tr>
				<th> 번호 </th>
				<td> ${reply_view.bid} </td>
			</tr>
			<tr>
				<th> 히트 </th>
				<td> ${reply_view.bhit} </td>
			</tr>
			<tr>
				<th> 이름 </th>
				<td> <input type="text" name="bname" size="20" value="${reply_view.bname}"></td>
			</tr>
			<tr>
				<th> 제목 </th>
				<td> <input type="text" name="btitle" size="80" value="${reply_view.btitle}"></td>
			</tr>
			<tr>
				<th> 내용 </th>
				<td> <textarea name="bcontent" rows="30" cols="85">${reply_view.bcontent}</textarea></td>
			</tr>
			<tr >
				<td colspan="2"><input type="submit" value="답변" id="button"> 
                <input type="button" value="목록" onclick="location.href='list.do'" id="button">
			</tr>
		</form>
	</table>
	</div>
	
</body>
</html>