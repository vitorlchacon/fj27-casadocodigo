<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" charset="text/html;charset=UTF-8">
<title>Casa do Código</title>
</head>
<body>
	<c:url value="/products" var="url"/>
	<form:form action="${spring:mvcUrl('PC#save').build()}" method="post" commandName="product" enctype="multipart/form-data">
		<div>
			<label for = "title">Título</label>
			<form:input path="title" id="title"/>
			<form:errors path="title"/>
		</div>
		<div>
			<label for = "description">Descrição</label>
			<form:textarea rows="10" cols="20" path="description" id="description"/>
			<form:errors path="description"/>
		</div>
		<div>
			<label for = "numberOfPages">Páginas</label>
			<form:input path="numberOfPages" id="numberOfPages"/>
			<form:errors path="numberOfPages"/>
		</div>
		<div>
			<label for = "summary">Sumário do livro</label>
			<input type="file" name="summary" id="summary"/>
			<form:errors path="summaryPath"/>
		</div>
		<div>
			<label for = "releaseDate">Data de Lançamento</label>
			<form:input type="date" path="releaseDate" id="releaseDate"/>
			<form:errors path="releaseDate"/>
		</div>
		<c:forEach items="${types}" varStatus="status" var="bookType">
			<div>
				<label for="price_${bookType}">${bookType}</label>
				<input type = "text" name="prices[${status.index}].value" id="price_${bookType}"/>
				<input type = "hidden" name="prices[${status.index}].bookType" value="${bookType}"/>
			</div>
		</c:forEach>
		<div>
			<input type = "submit" value="Enviar"/>
		</div>
	</form:form>
</body>
</html>