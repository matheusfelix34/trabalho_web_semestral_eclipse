<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>Historico de pedidos</title>
    <meta name="description" content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

<jsp:include page="../header.jsp" />

<!-- Page Content -->
<div class="container">


    <table class="table">
        <h1>Seu historico de pedidos:</h1>
        <thead>
        <tr>
            <th scope="col">#</th>
            <th>nº do pedido</th>
            <th>data do pedido</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td><a href="pedido.jsp">116511651656565165</a></td>
            <td>05/03/2020</td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td><a href="pedido.jsp">789511651656565165</a></td>
            <td>29/03/2020</td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td><a href="pedido.jsp">145511651656565165</a></td>
            <td>18/03/2020</td>
        </tr>
        </tbody>
    </table>

    <hr>



    <hr>



    <hr>

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
