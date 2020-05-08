<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="canonical" href="https://html5-templates.com/" />
<title>Bem vindo</title>
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
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">Loja Virtual</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">

					<li class="dropdown active"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Produtos <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="active"><a
								href="../produtos/cadastro_produto.html">Cadastrar produto</a></li>
							<li><a href="../produtos/consulta_produto.html">Excluir
									ou alterar produto</a></li>
						</ul></li>
					<li class="dropdown active"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Suas Compras <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="active"><a href="../compras/carrinho.html">Carrinho
									de compras</a></li>
							<li><a href="../clientes/historico_do_pedido.html">Historico
									de pedidos</a></li>
						</ul></li>
					<li class="dropdown active"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Cliente <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="active"><a
								href="../clientes//cadastro_cliente.html">Cadastrar cliente</a>
							</li>
							<li><a href="../clientes/historico_do_pedido.html">Consultar
									cliente</a></li>
						</ul></li>
					<li class="dropdown active"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Relatorios <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="active"><a
								href="../relatorios/consulta_cliente_relatorio.html">Pedidos
									por cliente</a></li>
							<li><a href="../relatorios/relatorio_pedidos_data.html">Pedidos
									por data</a></li>
						</ul></li>
					<li class="dropdown active"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Usuario <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="active"><a href="../clientes/alteracao.html">Alterar
									conta</a></li>
							<li class="active"><a href="login.html">Sair</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">


		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Produtos a venda:</h1>
			</div>
		</div>


		<form action="../../InserirNoCarrinho">
			<div class="row">
				<div class="col-md-7">
					<a href="#"> <img class="img-responsive img-hover"
						src="../../imagens/obra_prima.jpg" alt="">
					</a>
				</div>
				<div class="col-md-5">
					<h4 class="pull-right">R$24.99</h4>
					<input type="hidden" value="24.99" name="preco">
					<h2>Sandy e Junio uma aventura virtual</h2>
					<input type="hidden" value="Sandy e Junio uma aventura virtual"
						name="nome">
					<h4>Apenas o melhor jgo feito pelo homem</h4>
					<input type="submit" class="btn btn-primary"
						value="Por no carrinho">
				</div>
			</div>
		</form>

		<form action="../../InserirNoCarrinho">
			<div class="row">
				<div class="col-md-7">
					<a href="#"> <img class="img-responsive img-hover"
						src="../../imagens/livro.jfif" alt="">
					</a>
				</div>
				<div class="col-md-5">
					<h4 class="pull-right">R$24.99</h4>
					<input type="hidden" value="24.99" name="preco">
					<h2>Kit livros</h2>
					<input type="hidden" value="Kit livros" name="nome">
					<h4>kit com 4 livros</h4>
					<input type="submit" class="btn btn-primary"
						value="Por no carrinho">
				</div>
			</div>
		</form>

		<form action="../../InserirNoCarrinho">
			<div class="row">
				<div class="col-md-7">
					<a href="#"> <img class="img-responsive img-hover"
						src="../../imagens/hqsbrasileiras.jpg" alt="">
					</a>
				</div>
				<div class="col-md-5">
					<h4 class="pull-right">R$99.99</h4>
					<input type="hidden" value="99.99" name="preco">
					<h2>Melhor hq br</h2>
					<input type="hidden" value="Melhor hq br" name="nome">
					<h4>Nunca sera feito um quadrinho mais emocionante que esse</h4>
					<input type="submit" class="btn btn-primary"
						value="Por no carrinho">
				</div>
			</div>
		</form>

		<form action="../../InserirNoCarrinho">
			<div class="row">
				<div class="col-md-7">
					<a href="#"> <img class="img-responsive img-hover"
						src="../../imagens/manopla.jpg" alt="">
					</a>
				</div>
				<div class="col-md-5">
					<h4 class="pull-right">R$24.99</h4>
					<input type="hidden" value="24.99" name="preco">
					<h2>Manopla do infinto</h2>
					<input type="hidden" value="Manopla do infinto" name="nome">
					<h4>Usada , mas em bom estado</h4>
					<input type="submit" class="btn btn-primary"
						value="Por no carrinho">
				</div>
			</div>
		</form>

		<form>
			<div class="row">

				<div class="col-md-7">
					<a href="#"> <img class="img-responsive img-hover"
						src="../../imagens/Agumon.jpg" alt="">
					</a>
				</div>
				<div class="col-md-5">
					<h4 class="pull-right">R$24.99</h4>
					<input type="hidden" value="24.99" name="preco">
					<h2>Agumon</h2>
					<input type="hidden" value="Agumon" name="nome">
					<h4>O melhor digi parceiro que vc pode ter...</h4>
					<input type="submit" class="btn btn-primary"
						value="Por no carrinho">
				</div>
			</div>
		</form>
	</div>
</body>
</html>