<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrinho</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>
	<%
		HttpSession sessao = request.getSession();
		List<String> lstNomes = (List<String>) sessao.getAttribute("lstNomes");
		List<String> lstPrecos = (List<String>) sessao.getAttribute("lstPrecos");
	%>
	<h1>Estes são os itens que estão no seu carrinho</h1>
	<br>
	<br>
	<br>
	<table>
		<tr>
			<th>Produto</th>
		</tr>
		<%for(String nome: lstNomes){ %>
		<tr><td><%=nome %></td></tr>
		<%} %>
		
	</table>
	<table>
		<tr>
			<th>Preço</th>
		</tr>
		<%for(String preco: lstPrecos){ %>
		<tr><td><%=preco %></td></tr>
		<%} %>
		
	</table>
	<br>
	<br>
	<br>
	<form action="">
		<div class="form-row text-center">
			<div class="col-12">
				<input type="submit" value="Confirmar compra"
					class="btn btn-success" align="center">
			</div>
		</div>
	</form>
</body>
</html>