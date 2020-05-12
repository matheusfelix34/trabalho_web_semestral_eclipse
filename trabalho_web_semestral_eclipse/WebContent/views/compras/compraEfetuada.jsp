<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="en" class="no-js">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="canonical" href="https://html5-templates.com/" />
<title>Compra efetuada</title>
<meta name="description"
	content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link href="../../css/modern-business.css" rel="stylesheet">
<link href="../../font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="../loja/index.jsp">Loja Virtual</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">

					<li class="dropdown active"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Produtos <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="active"><a
								href="../produtos/cadastro_produto.jsp">Cadastrar produto</a></li>
							<li><a href="../produtos/consulta_produto.jsp">Excluir
									ou alterar produto</a></li>
						</ul></li>
					<li class="dropdown active"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Suas Compras <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="active"><a href="../compras/carrinho.jsp">Carrinho
									de compras</a></li>
							<li><a href="../clientes/historico_do_pedido.jsp">Historico
									de pedidos</a></li>
						</ul></li>
					<li class="dropdown active"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Cliente <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="active"><a
								href="../clientes/cadastro_cliente.jsp">Cadastrar cliente</a></li>
							<li><a href="../clientes/historico_do_pedido.jsp">Consultar
									cliente</a></li>
						</ul></li>
					<li class="dropdown active"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Relatorios <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="active"><a
								href="../relatorios/consulta_cliente_relatorio.jsp">Pedidos
									por cliente</a></li>
							<li><a href="../relatorios/relatorio_pedidos_data.jsp">Pedidos
									por data</a></li>
						</ul></li>
					<li class="dropdown active"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Usuario <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="active"><a href="../clientes/alteracao.jsp">Alterar
									conta</a></li>
							<li class="active"><a href="login.jsp">Sair</a></li>
						</ul></li>


				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>



	<h1>Compra Efetuada!</h1>
	<br>
	<br>
	<br>
	<span><a href='javascript:history.back()'>[Voltar ao index]</a></span>

	<script src="../../js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../../js/bootstrap.min.js"></script>
</body>
</html>