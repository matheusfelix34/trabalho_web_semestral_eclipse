<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta relatorio</title>
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <script>
        function consultar(){
        	
        	 var cpf = document.getElementById("cpf").value;
             
             if(cpf != ""){
            	 document.getElementById('form_consulta').submit();
                 
             }else{
                 alert("Preencha  o campo de cpf, para realizar a consulta.");
                 
             }
     
        }
       
    </script>
</head>
<body>
     <!-- Navigation -->


<jsp:include page="../header.jsp" />
    <h1 class="display-3 text-center">Consulta de cliente para relatorio de pedidos:</h1>
    <p>

    <form name="form1" id="form_consulta" method="post" action="../../Relatorio_srv">
        <div class="container border">
            <div class="form-group">
                <label for="cpf">CPF: </label>
                <input type="text" name="cpf" id="cpf" class="form-control" required>
            </div>
                <div class="text-center">
                 <input type="submit" name="enviar" id="enviar">
                
            </div>
            <br>
        </div>
    </form>
    <script src="../../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../../js/bootstrap.min.js"></script>
</body>
</html>