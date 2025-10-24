<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<meta charset="UTF-8">
<title></title>
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
	<div class="detail" align="center">
		<h2>게시판 상세 조회</h2>
		<table>
			<tr>
				<th width="80px">글번호</th>
				<td width="420px">${b.no}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${b.title}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${b.writer}</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${b.count}</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${b.createDate}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${b.content}</td>
			</tr>
		</table>
		<br>
		<table>
			<thead>
			<c:choose>
				<c:when test="${loginUser != null}">
					<form id="rFrm">
						<tr>
							<th width="80px">댓글작성</th>
							<th width="340px"><textarea rows="3" cols="45" name="centent" id="content"></textarea>
							<th width="80px"><input type="button" value="댓글작성" id="replyInsert"></th>
						</tr>
						<input type="hidden" name="refBno" value="${b.no}" />
						<input type="hidden" name="writer" value="${loginUser.userId}" />
					</form>
				</c:when>
				<c:otherwise>
					<tr>
						<th width="80px">댓글작성</th>
						<th width="340px"><textarea rows="3" cols="45" name="centent" id="content"></textarea>로그인 후 이용 가능 합니다</th>
						<th width="80px"><input type="button" value="댓글작성" id="replyInsert" disabled></th>
					</tr>
				</c:otherwise>
			</c:choose>
			</thead>
			<tbody>
				<c:forEach var="r" items="${rlist}">
					<tr>
						<td>${r.writer}</td>
						<td>${r.content}</td>
						<td>${r.createDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div id="paging-area" align="center">
			<c:if test="${rpi.nowPage ne 1}">
				<a href="detail.bo?nowPage=${rpi.nowPage-1}&bno=${b.no}">[이전]</a>
			</c:if>
			<c:forEach var="p" begin="${rpi.startPage}" end="${rpi.endPage}">
				<c:choose>
					<c:when test="${p eq rpi.nowPage}">
						<a href="detail.bo?nowPage=${p}&bno=${b.no}" style="color:red">[${p}]</a>
					</c:when>
					<c:otherwise>
						<a href="detail.bo?nowPage=${p}&bno=${b.no}">[${p}]</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${rpi.nowPage ne rpi.totalPage}">
				<a href="detail.bo?nowPage=${rpi.nowPage+1}&bno=${b.no}">[다음]</a>
			</c:if>
		</div>
	</div>
	<script type="text/javascript">
		$("#replyInsert").click(function(){
			let rdata = $("#rFrm").serialize(); /* == content=내용&refBno=13&writer=skarnddydwls */
			
			$.ajax({
				url: "rinsert.bo",
				data: {
					refBno: ${b.no},
					content: $("#content").val(),
					writer: "${loginUser.userId}"
				},
				success: function(result){
					console.log(result);
					if(result>0){
						$("#content").val("");
						location.reload();
					}
				},
				error: function(){
					console.log("통신 실패");
				}
			})
		})
	</script>
</body>
</html>
















