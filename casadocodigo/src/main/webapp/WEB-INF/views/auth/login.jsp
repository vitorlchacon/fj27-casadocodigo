<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="cdc" %>
<cdc:page title="Login">
	<h3>Efetue o login</h3>
	<form:form servletRelativeAction="/login" method="post">
		<table>
			<tr>
				<td>Login:</td>
				<td><input type="text" name="username" value=""></td>
			</tr>		
			<tr>
				<td>Senha:</td>
				<td><input type="password" name="password" ></td>
			</tr>
			<tr>
				<td>Lembrar senha </td>
				<td><input type="checkbox" name="remember-me"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" name="submit" value="Logar">
				</td>
			</tr>			
		</table>
	</form:form>
</cdc:page>