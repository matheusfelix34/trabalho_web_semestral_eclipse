<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>Cadastro de produtos</title>
	<meta name="description" content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
		function msg() {

            var nome = document.getElementById("produto").value;
            var valor = document.getElementById("valor").value;
            if(nome != "" && valor != ""){
                alert("Produto cadastrado com sucesso!");
            }else{
                alert("Preencha todos os campos para cadastrar um produto.");
                
            }

 	 		
		}
</script>
</head>

<body>

     <jsp:include page="../header.jsp" />

    <!-- Page Content -->
    <div class="container">

        <hr>

       <h1>Produto cadastrado com sucesso!</h1>
   	
  <button onclick="goBack()">Voltar</button>

<script>
function goBack() {
  window.history.back();
}
</script>
        
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