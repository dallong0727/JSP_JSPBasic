<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.center {
	border: 1px solid;
	margin: 0 auto;
	width: 300px;
}

.center table {
	width: inherit;
}
</style>

</head>
<body>
	<div class="center">
	<table border = "1" align ="center">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>가격</td>
			<td>장바구니</td>
		</tr>
		<tr>
			<td>1</td>
			<td>나이키s</td>
			<td>1000</td>
			<td><a href ="quiz03.jsp?num=1&name=나이키&price=1000"></a>추가</td>
		</tr>
		<tr>
			<td>2</td>
			<td>아디다스t</td>
			<td>2000</td>
			<td><a href ="quiz03.jsp?num=2&name=아디다스&price=2000"></a>추가</td>
		</tr>
		<tr>
			<td>3</td>
			<td>라코스테e</td>
			<td>3000</td>
			<td><a href ="quiz03.jsp?num=3&name=라코스테&price=3000"></a>추가</td>
		</tr>
		<tr>
			<td colspan = "2"><a href ="quiz04.jsp"></a>장바구니</td>
			<td colspan = "2"><a href ="quiz05.jsp"></a>장바구니 비우기</td>		
		</tr>
	</table>
	</div>
</body>
</html>