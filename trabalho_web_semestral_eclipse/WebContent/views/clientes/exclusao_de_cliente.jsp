<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>Exclus�o de usuario</title>
    <meta name="description" content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script>
        function actExcluir(){
            document.forms[0].action= "exclusao_sucedida.html"
            document.forms[0].submit()
        }
        function actDesfazer(){
            document.forms[0].action= "../loja/index.html"
            document.forms[0].submit()
        }
    </script>
</head>
<body>
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
                            <a href="../clientes/cadastro_cliente.html">Cadastrar cliente</a>
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
                            <a href="../loja/login.html">Sair</a>
                        </li>
                    </ul>
                </li>


            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<div class="container">

    <h1 class="display-4 text-center">Tem certeza  que deseja excluir o cadastro do usuario?</h1>
    <br><br>
    <form id="formulario" action="">
        <div class="container border text-center">
            <br><br>
            <input type="button" id="confirmar" value="Excluir" class="btn btn-danger" onclick="actExcluir()">
            <input type="button" id="desfazer" value="N�o excluir" class="btn btn-success" onclick="actDesfazer()">
            <br><br>
        </div>
    </form>
</div>

<!-- jQuery -->
<script src="../../js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../js/bootstrap.min.js"></script>

</body>
</html>