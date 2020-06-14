<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>Consulta de cliente</title>
    <meta name="description" content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <script>
       /* function actExcluir(){
            var cpf = document.getElementById("cpf").value
            if(cpf != null && cpf != ""){
                document.forms[0].action= "exclusao_de_cliente.html"
                document.forms[0].submit()
            }
        }
        function actAlterar(){
            var cpf = document.getElementById("cpf").value
            if(cpf != null && cpf.trim() != ""){
                document.forms[0].action= "alteracao.html"
                document.forms[0].submit()
            }
        }
        */
        function mostrar_radio() {

            var numeracao = document.getElementById("cpf").value
            console.log(numeracao);
            if(numeracao != null && numeracao.trim() != ""){
           
                var radio = document.getElementsByName("group1");
        
        var radio_selected;
        
        for (var a = 0;  a < radio.length; a++) {
            if (radio[a].checked) {
                radio_selected = radio[a].value;
            }
        }
        
       
       if(radio_selected=="excluir"){
    	   document.getElementById('opcao').value="excluir";
    	   document.getElementById('formulario').submit();
    	  
       /* document.forms[0].action= "exclusao_de_produto.html"
            document.forms[0].submit()*/

       }else if(radio_selected=="alterar"){
    	   document.getElementById('opcao').value="alterar";
    	   document.getElementById('formulario').submit();
    	  
        /*document.forms[0].action= "alteracao.html"
            document.forms[0].submit()*/
       }else{
        alert("Escolha entre alterar ou excluir, por favor");
       }
       


            }else{
                alert("Preencha o campo de cpf, por favor");
            }

        
       

    };
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
            <a class="navbar-brand" href="../loja/index.jsp">Loja Virtual</a>
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

<!-- Page Content -->
<div class="container">


    <h1 class="display-3 text-center">Consulta de cliente:</h1>

    <form id="formulario" method="post" action="/trabalho_semestral_web/BuscarCliente">
        <div class="container border">
            <div class="form-group">
                <label for="cpf">CPF: </label>
                <input type="number" name="cpf" id="cpf" class="form-control" required>
            </div>
            <div class="text-center">
                <input type="radio" name="group1" value="excluir"  > Excluir
                <input type="radio" name="group1" value="alterar"  > Alterar
           		 <input type="hidden" name="opcao" id="opcao" value="">
           		 	<br><br>
           		
           		<input style="background-color: black; border:0; color: white; padding: 10px;"type="submit" value="Enviar" onclick="mostrar_radio();">
            </div>
            <br>
        </div>
    </form>
</div>
<!-- /.container -->

<!-- jQuery -->
<script src="../../js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../js/bootstrap.min.js"></script>


</body>


</html>
