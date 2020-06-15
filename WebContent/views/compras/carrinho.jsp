<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Produto" %>
<html lang="en" class="no-js">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="canonical" href="https://html5-templates.com/" />
<title>Carrinho</title>
<meta name="description"
	content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link href="../../css/modern-business.css" rel="stylesheet">
<link href="../../font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
		<style>
table, th, td {
  border: 1px solid black;
}
</style>
	
	
</head>
<body>

<jsp:include page="../header.jsp" />
	<%
		HttpSession sessao = request.getSession();
		List<Produto> produtos = (List<Produto>) sessao.getAttribute("lstProdutos");
		
	%>
	<h1>Estes são os itens que estão no seu carrinho</h1>
	<br>
	<br>
	<br>
	
	<%if(produtos == null){		
	%>
	<h1>Carrinho vazio!</h1>
	<%}else{ %>
	
	<table>
		<tr>
			<th>Produto</th>
			<th>Preço</th>
		</tr>
		<tr>
		<% for(Produto p : produtos){ %>
			<td><%=p.getNome() %></td>
			<td><%=p.getPreco() %></td>
			<form method="post" action="../../RemoverDoCarrinho">
				<input type="hidden" id="produto" name="nome" value="<%=p.getNome() %>">
				<input type="hidden" id="preco" name="preco" value="<%=p.getPreco() %>">
				<td><input type="submit" value="Excluir"></td>
			</form>
			</tr>
		<%}; %>
	</table>
	<br>
	<br>
	<br>
	<form action="compraEfetuada.jsp">
		<div class="form-row text-center">
			<div class="col-12">
				<input type="submit" value="Confirmar compra"
					class="btn btn-success" align="center">
			</div>
		</div>
	</form>
	
	<%} %>
	<script type="text/javascript">
//document.getElementById("1");
/*var teste= 	document.getElementById("3").innerHTML;
	console.log(teste);*/
	
	 function reply_click(clicked_id)
	  {
	      
	      var resultado = clicked_id.replace(".", "");
	      
	   /*  var teste=document.getElementById("produto").value;
	     console.log(teste);*/
	     document.getElementById(resultado).submit();

	  }
	
	//document.getElementById('form_consulta').;
	</script>

	<script src="../../js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../../js/bootstrap.min.js"></script>
</body>
</html>