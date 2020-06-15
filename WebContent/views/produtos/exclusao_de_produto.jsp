<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="canonical" href="https://html5-templates.com/" />
<title>Exclusão de produto</title>
<meta name="description"
	content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link href="../../css/modern-business.css" rel="stylesheet">
<link href="../../font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script>
        function actExcluir(){
        	 document.getElementById('opcao').value="excluisao_sucesso";
      	   document.getElementById('form_consulta').submit();
        }
        function actDesfazer(){
            document.forms[0].action= "consulta_produto.jsp"
            document.forms[0].submit()
        }
    </script>
</head>
<body>

	<jsp:include page="../header.jsp" />

	<div class="container">

		<h1>Tem certeza que deseja excluir o cadastro do produto?</h1>
		<form name="form1" id="form_consulta" method="post"
			action="../../Produto_srv">

			<br>
			<br> <input type="button" id="confirmar" value="Excluir"
				class="btn btn-danger" onclick="actExcluir()"> <input
				type="button" id="desfazer" value="Não excluir"
				class="btn btn-success" onclick="actDesfazer()"> <input
				type="hidden" name="opcao" id="opcao" value="">
		</form>
	</div>

	<!-- jQuery -->
	<script src="../../js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../../js/bootstrap.min.js"></script>

</body>
</html>