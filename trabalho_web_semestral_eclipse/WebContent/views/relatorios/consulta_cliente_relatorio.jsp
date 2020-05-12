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
     <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../loja/index.html">Loja Virtual</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                   
                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Produtos <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="active">
                                <a href="../produtos/cadastro_produto.jsp">Cadastrar produto</a>
                            </li>
                            <li>
                                <a href="../produtos/consulta_produto.jsp">Excluir ou alterar produto</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Suas Compras <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="active">
                                <a href="../compras/carrinho.jsp">Carrinho de compras</a>
                            </li>
                            <li>
                                <a href="../clientes/historico_do_pedido.jsp">Historico de pedidos</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cliente <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="active">
                                <a href="../clientes/cadastro_cliente.jsp">Cadastrar cliente</a>
                            </li>
                            <li>
                                <a href="../clientes/historico_do_pedido.jsp">Consultar cliente</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Relatorios <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="active">
                                <a href="consulta_cliente_relatorio.jsp">Pedidos por cliente</a>
                            </li>
                            <li>
                                <a href="relatorio_pedidos_data.jsp">Pedidos por data</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Usuario <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="active">
                                <a href="../clientes/alteracao.jsp">Alterar conta</a>
                            </li> 
                            <li class="active">
                                <a href="../loja/login.jsp">Sair</a>
                            </li>                          
                        </ul>
                    </li>
                    
                  
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <h1 class="display-3 text-center">Consulta de cliente para relatorio de pedidos:</h1>
    <p>

    <form name="form1" id="form_consulta" method="post" action="/trabalho_web_semestral_eclipse/Relatorio_srv"">
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