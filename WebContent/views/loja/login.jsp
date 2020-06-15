<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<br><br><br>

<script>

function redirecionar(){
	
	window.location.href = "../clientes/cadastro_cliente.jsp";

	
}

</script>



 <form name="login"  id="formlogin" method="post" action="../../LoginSessao1" class="form-group col-md-6 offset-md-3 border">
	<div class="form-group">
	<br>
		<p>Login: <input type="text" name="user" id="user" class="form-control" required></p>
	</div>
	<div class="form-group">
		<p>Senha: <input type="password" name="senha" id="senha" class="form-control" required></p>
	</div>
	<div class="form-row text-center">
	<div class="col-12">
		<input type="submit" value="Entrar" class="btn btn-success" align="center">
		<button class="btn btn-success" onclick="redirecionar()">Cadastrar-se</button>
	</div>
	</div>
	<br>
</form>
</body>
</html>