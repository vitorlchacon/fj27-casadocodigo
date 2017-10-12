<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Casa do Código</title>
</head>
<body>
	<h3>${sucesso}</h3>
	<table>
		<tr>
			<th>Título</th>
			<th>Preços</th>
			<th>Detalhes</th>
		</tr>
		<c:forEach items="${products}" var="product">
			<tr>
				<td>${product.title}</td>
				<td>| 
					<c:forEach items="${product.prices}" var="price">
						${price.bookType} - ${price.value} |
					</c:forEach>
				</td>
				<td>
					<c:url value="/products/${product.id}" var="linkDetalhar"/>
					<a href="${linkDetalhar}">
						Detalhes
					</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>