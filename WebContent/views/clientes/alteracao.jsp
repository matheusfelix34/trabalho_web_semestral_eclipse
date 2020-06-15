<%@page import="model.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>Alteração de Cadastro</title>
    <meta name="description" content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<script>
   function actExcluir(){
   	 document.getElementById('saveproduct').value="alterado_sucesso";
   	 document.getElementById('formulario').submit();
   }
    </script>
</head>
<body>
<jsp:include page="../header.jsp" />

<h1 class="display-3 text-center">Alteração de Cadastro </h1>

<form id = "formulario" method="post" action="../../Alterar_cliente">
    <div class="container border">
        
        <%
		 HttpSession sessaoRecuperada = request.getSession();
	
	Cliente model = (Cliente)sessaoRecuperada.getAttribute("atributoCliente");
        		
		 
		
	%>  
	
	 <% if(model==null){ %>
			 
			  <label for="fname">Nome</label><br>
			  <input type="text" id="nome" name="nome" class="form-control" value="Nome_exemplo"><br> 
			 
    	   	  <label for="cpf">Cpf</label><br>
        	  <input type="text" id="cpf" value="01.23.45.67-89" name="cpf" maxlength="14" disabled readonly class="form-control"> class="form-control"<br>
        	   <label for="rg">Rg</label><br>
        <input type="text" id="rg" name="rg" value="01.23.45.67-89" disabled readonly class="form-control"><br>
        <label for="dt">Data de Nascimento</label><br>
        <input type="text" id="dataNascimento" name="dataNascimento" value="01/01/2001" disabled readonly class="form-control"><br>
        <label for="ender">Endereço</label><br>
        <input type="text" id="ender" name="ender" value="rua a, n 10"disabled class="form-control"><br>
          
        <label for="senha">Nova Senha :</label>
        <input type="password" id="senha" name="password" value="asdasdsadasd" minlength="8" required class="form-control">
        
     
        
        
			 
	<%}else{%>
	  <label for="fname">Nome</label><br>
			  <input type="text" id="nome" name="nome" class="form-control" value="<%=model.getNome()%>"><br>
			  
        <label for="cpf">Cpf</label><br>
        <input type="text" id="cpf" value="<%=model.getCpf()%>" name="cpf" maxlength="14" disabled readonly class="form-control"> class="form-control"<br>
        
         <label for="rg">Rg</label><br>
        <input type="text" id="rg" name="rg" value="<%=model.getRg()%>" disabled readonly class="form-control"><br>
        <label for="dt">Data de Nascimento</label><br>
        <input type="text" id="dataNascimento" name="dataNascimento" value="<%=model.getDataNascimento()%>" disabled readonly class="form-control"><br>
        <label for="ender">Endereço</label><br>
        <input type="text" id="endereco" name="endereco" value="<%=model.getEndereço()%>"disabled class="form-control"><br>
		 <label for="senha">Nova Senha :</label>
        <input type="password" id="senha" name="senha" value="<%=model.getSenha()%>" minlength="8" required class="form-control">
      
		<%}%>
	
    
        <br><br>
        <div class="text-center">
            <input id ="saveproduct" type="submit" value="Salvar" class="btn btn-success">
        </div>
        <br>
    </div>
</form>

<script src="../../js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../js/bootstrap.min.js"></script>


</body>
</html>