<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.List, com.javaex.vo.PersonVo" %>
<%
	// getAttribute 반환 자료형 object > 형변환 필요
	// request attribute 영역에서 가져온다
	List<PersonVo> pList = (List<PersonVo>)request.getAttribute("pList");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>[phonebook2]</h1>
	<h2>전화번호 리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>

	
	<%
	for(PersonVo vo : pList){
	%>
	<table border="1">
		<tr>
			<td>이름(name)</td>
			<td><%= vo.getName() %></td>
		</tr>
		<tr>
			<td>핸드폰(hp)</td>
			<td><%= vo.getHp() %></td>
		</tr>
		<tr>
			<td>회사(company)</td>
			<td><%= vo.getCompany() %></td>
		</tr>
		<tr>
			<td><button onclick="location.href='/phonebook2/pbc?action=updateForm&id=<%=vo.getPersonId()%>'">수정</button></td>
			<td><button onclick="location.href='/phonebook2/pbc?action=delete&id=<%=vo.getPersonId()%>'">삭제</button></td>
		</tr>
	</table>
	<br>
	<%}%>
	
	<a href = "/phonebook2/pbc?action=writeForm"> 전화번호 등록폼</a>
</body>
</html>