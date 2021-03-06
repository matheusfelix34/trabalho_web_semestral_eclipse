<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>Altera��o de Cadastro</title>
    <meta name="description" content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


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
                            <a href="../produtos/cadastro_produto.html">Cadastrar produto</a>
                        </li>
                        <li>
                            <a href="../produtos/consulta_produto.html">Excluir ou alterar produto</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown active">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Suas Compras <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li class="active">
                            <a href="../compras/carrinho.html">Carrinho de compras</a>
                        </li>
                        <li>
                            <a href="../clientes/historico_do_pedido.html">Historico de pedidos</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown active">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cliente <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li class="active">
                            <a href="./cadastro_cliente.jsp">Cadastrar cliente</a>
                        </li>
                        <li>
                            <a href="consulta_altera_exclui.html">Excluir ou alterar cliente</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown active">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Relatorios <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li class="active">
                            <a href="../relatorios/consulta_cliente_relatorio.html">Pedidos por cliente</a>
                        </li>
                        <li>
                            <a href="../relatorios/relatorio_pedidos_data.html">Pedidos por data</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown active">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Usuario <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li class="active">
                            <a href="alteracao.html">Alterar conta</a>
                        </li>
                        <li class="active">
                            <a href="../produtos/login.jsp">Sair</a>
                        </li>
                    </ul>
                </li>



            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<h1 class="display-3 text-center">Altera��o de Cadastro </h1>

<form action="../loja/index.html">
    <div class="container border">
        <label for="fname">Nome</label><br>
        <input type="text" id="fname" name="fname" class="form-control" value="nome exemplo"><br>
        <label for="cpf">Cpf</label><br>
        <input type="text" id="cpf" value="01.23.45.67-89" name="cpf" maxlength="14" disabled readonly class="form-control"> class="form-control"<br>
        <label for="rg">Rg</label><br>
        <input type="text" id="rg" name="rg" value="01.23.45.67-89" disabled readonly class="form-control"><br>
        <label for="dt">Data de Nascimento</label><br>
        <input type="text" id="dt" name="dt" value="01/01/2001" disabled readonly class="form-control"><br>
        <label for="ender">Endere�o</label><br>
        <input type="text" id="ender" name="ender" value="rua a, n 10"disabled class="form-control"><br>
        <label for="sex">Sexo:</label>
        <input type="radio" name="sex" value="masculino" disabled> Masculino
        <input type="radio" name="sex" value="feminino" disabled> Feminino
        <br><br>
        <label for="senha">Nova Senha :</label>
        <input type="password" id="senha" name="password" minlength="8" required class="form-control">

        <br><br>
        <div class="text-center">
            <input type="submit" value="Salvar" class="btn btn-success">
        </div>
        <br>
    </div>
</form>

<script src="../../js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../js/bootstrap.min.js"></script>


</body>
</html>