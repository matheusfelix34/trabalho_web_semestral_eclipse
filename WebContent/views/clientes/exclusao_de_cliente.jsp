<%@page import="model.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>Exclusão de usuario</title>
    <meta name="description" content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script>
   /* function actExcluir(){
   	 document.getElementById('opcao').value="exclusao_sucesso";
 	 document.getElementById('formulario').submit();

   }*/
   function actDesfazer(){
       document.forms[0].action= "consulta_altera_exclui.jsp"
       document.forms[0].submit()
   }
    </script>
</head>
<body>

<jsp:include page="../header.jsp" />

<div class="container">
  <%
		 HttpSession sessaoRecuperada = request.getSession();
	
	Cliente model = (Cliente)sessaoRecuperada.getAttribute("atributoCliente");
        		
		 
		
	%>  
	
	
	
	
	
	<% if(model==null){ %>
		<h1 class="display-4 text-center">Tem certeza  que deseja excluir o cadastro do usuario Exemplo?</h1>	 
			 
	<%}else{%>
	   
	 
	 <h1 class="display-4 text-center">Tem certeza  que deseja excluir o cadastro do usuario <%=model.getNome()%> ?</h1>
			
		<%}%>
	
	
	
  
    <br><br>
    <form id="formulario" method="post" action="../../Excluir_cliente">
        <div class="container border text-center">
            <br><br>
            <input type="submit" id="confirmar" value="Excluir" class="btn btn-danger" onclick="actExcluir()">
            <input type="button" id="desfazer" value="Não excluir" class="btn btn-success" onclick="actDesfazer()">
           
            <br><br>
        </div>
    </form>
</div>

<!-- jQuery -->
<script src="../../js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../js/bootstrap.min.js"></script>

</body>
</html>