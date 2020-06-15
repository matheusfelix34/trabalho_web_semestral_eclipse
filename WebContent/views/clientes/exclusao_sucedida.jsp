<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>Exclusão Realizada</title>
    <meta name="description" content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
</head>
<body>
<jsp:include page="../header.jsp" />

<!-- Page Content -->
<div class="container">




    <h1 class="display-4 text-center">Exclusão Realizada com sucecesso</h1>
    <br>


    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">

            </div>
        </div>
    </footer>

</div>
<!-- /.container -->
<button onclick="goBack()">Voltar</button>
<button id="myButton" class="float-left submit-button" >Voltar ao páina principal</button>

<script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "views/clientes/consulta_altera_exclui.jsp";
    };
</script>
<!-- jQuery -->
<script src="../../js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../js/bootstrap.min.js"></script>
<script>
function goBack() {
	  window.history.back();
	}
</script>

</body>
</html>