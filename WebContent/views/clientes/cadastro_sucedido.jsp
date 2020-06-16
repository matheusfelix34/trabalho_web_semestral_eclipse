<%@page import="model.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de cliente</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script>
    function mostrar_radio() {
    	 document.getElementById('formulario').submit();
        }
        
       
 
       
       
    </script>
</head>
<body>
<h1 class="display-1 text-center">Cadastro do cliente</h1>

<h1 class="display-4 text-center"><%
		 HttpSession sessaoRecuperada = request.getSession();
	
	Cliente model = (Cliente)sessaoRecuperada.getAttribute("atributoCliente");
		 
		
	%>
	
	
	
	
	
	<% if(model==null){ %>
			 
			  Exemplo realizado com sucesso!  </h1>
        
        
			 
	<%}else{%>
	 <%=model.getNome()%> realizado com sucesso!  </h1>
		<%}%>
	
	
	
    <br>
<button onclick="goBack()">Voltar</button>
<script>
function goBack() {
  window.history.back();
}//getDataNascimento()
</script>


</body>
</html>