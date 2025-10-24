<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.detail table {
	    border:1px solid;
	    border-collapse: collapse;
	    width: 500px;
	    text-align: center;
	    table-layout: fixed;
	}
	.detail td, th {
	    border:1px solid;
	    word-break: break-all;
	    white-space: normal;
	}
	.outer a {
	    text-decoration:none;
	    color: black;
	}
</style>
</head>
<body>
<jsp:include page="../common/menubar.jsp" />
	<div align="center" class="detail">
		<h2>글 쓰 기</h2>
		<form action="">
			<table>
				<tr>
					<td>제목</td>
					<td colspan="3"><input name="name"></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td colspan="3">${loginUser.userId}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="3">
						<textarea rows="3" cols="45" height="500px" name="centent" id="content"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="4" align="right"><input type="submit" value="등록"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>