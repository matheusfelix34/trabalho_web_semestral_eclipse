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
	<style>
table, th, td {
  border: 1px solid black;
}
</style>
	
	
</head>
<body>
<p id="demo" >teste</p>

	<%
		HttpSession sessao = request.getSession();
		List<String> lstNomes = (List<String>) sessao.getAttribute("lstNomes");
		List<String> lstPrecos = (List<String>) sessao.getAttribute("lstPrecos");
		
		int c = 0;
		for (String s : lstNomes) {
			c++;
		}
		
		String[][] bidi = new String[c][2];
		int cont1 = 0;
		for(String l: lstNomes) {
			bidi[cont1][0] = l;
			cont1++;
		}
		int cont2 = 0;
		for(String col: lstPrecos) {
			bidi[cont2][1] = col;
			cont2++;
		}
		int cont3 = 0;
	%>
	<h1>Estes s�o os itens que est�o no seu carrinho</h1>
	<br>
	<br>
	<br>
	<table>
		<tr>
			<th>Produto</th>
			<th>Pre�o</th>
		</tr>
		<%for(int i=0; i < bidi.length; i++) {%>
			
			<tr>
			<%for (int j = 0; j < bidi[i].length; j++) {%>
			
				<td ><%=bidi[i][j] %></td>
				<form   id="<%=i%>" method="post" action="/trabalho_web_semestral_eclipse/InserirNoCarrinho_test">
			<input type="hidden" id="produto" name="nome" value="<%=bidi[i][j] %>">
	            </form>
			
			<%}%>
		<td> <button id="<%=i %>." onClick="reply_click(this.id)">Excluir</button></td>
			</tr>
			
			
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
	

	
	<script type="text/javascript">
//document.getElementById("1");
/*var teste= 	document.getElementById("3").innerHTML;
	console.log(teste);*/
	
	 function reply_click(clicked_id)
	  {
	      alert(clicked_id);
	      var resultado = clicked_id.replace(".", "");
	      console.log(resultado);
	   /*  var teste=document.getElementById("produto").value;
	     console.log(teste);*/
	     document.getElementById(resultado).submit();

	  }
	
	//document.getElementById('form_consulta').;
	</script>
</body>
</html>