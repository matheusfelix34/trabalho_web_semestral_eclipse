<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
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
		
</script>
</head>

<body>

    <jsp:include page="../header.jsp" />

    <!-- Page Content -->
    <div class="container">

        <hr>

        <form name="form1" method="post" action="../../Produto_srv">
			<label for="produto">Novo nome do Produto</label><br>
			<input type="text" id="produto" name="produto" required><br>
			<label for="valor">Novo valor do Produto</label><br>
			<input type="Number" id="valor" name="valor" required><br>
		   <input type="hidden" name="opcao" id="opcao" value="alteracao_concluida">
		  
		  <br><br>
			<input type="submit" value="Salvar modificações">
		  </form> 
		  
   
        
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Loja  Virtual, 2020</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../../js/bootstrap.min.js"></script>


</body>


</html>
