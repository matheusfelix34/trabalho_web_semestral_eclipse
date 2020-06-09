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
        function cadastro(){
            var check = document.getElementById("senha")
            var cont = String(check.value)
            if(cont.length > 7)
                alert("Usuário cadastrado!")
        }
        
       
 
       function actCadastrar(){
    	   	 document.getElementById('opcao').value="cadastrado_sucesso";
    		 document.getElementById('formulario').submit();
       }
       
    </script>
</head>
<body>
<h1 class="display-1 text-center">Cadastro de cliente</h1>
<form id="formulario" method="post" action="/trabalho_web_semestral_eclipse/BuscarCliente">
    <div class="container border">
        <div class="form-group">
            <label for="fname">Nome: </label>
            <input type="text" id="fname" name="fname" class="form-control" required><br>
        </div>
        <div class="form-group">
            <label for="cpf">Cpf: </label>
            <input type="number" id="cpf" name="cpf" maxlength="14" class="form-control"><br>
        </div>
        <div class="form-group">
            <label for="rg">Rg: </label>
            <input type="number" id="rg" name="rg" maxlength="14" class="form-control"><br>
        </div>
        <div class="form-group">
            <label for="dt">Data de Nascimento: </label>
            <input type="date" id="dt" name="dt" class="form-control"><br>
        </div>
        <div class="form-group">
            <label for="ender">Endereço</label>
            <input type="text" id="ender" name="ender" class="form-control"><br>
        </div>
        <div class="form-group">
            <label for="sex">Sexo:</label>
            <input type="radio" name="sex" value="masculino"> Masculino
            <input type="radio" name="sex" value="feminino"> Feminino
        </div>
        <div class="form-group">
            <label for="senha">Senha :</label>
            <input type="password" id="senha" name="password" minlength="8" required class="form-control">
        </div>
  			<input type="hidden" name="opcao" id="opcao" value="">
        <br><br>
        <div class="text-center">
            <input type="submit" value="Cadastrar" class="btn btn-success">
            <input type="reset" value="Reset" class="btn btn-danger">
        </div>
        <br><br>
    </div>
</form>
<button onclick="goBack()">Voltar</button>

<script>
function goBack() {
  window.history.back();
}
</script>


</body>
</html>