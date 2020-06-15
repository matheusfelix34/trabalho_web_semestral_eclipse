<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="model.Pedido" %>
  <%@ page import="java.util.List"%>
   <%@ page import="java.util.ArrayList"%>
   <%@ page import="model.Produto" %>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>Relatorio_pedidos</title>
	<meta name="description" content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <script>
    

  
    </script>

</head>

<body >

     <!-- Navigation -->
<!--      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"> -->
<!--         <div class="container"> -->
<!--             Brand and toggle get grouped for better mobile display -->
<!--             <div class="navbar-header"> -->
<!--                 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> -->
<!--                     <span class="sr-only">Toggle navigation</span> -->
<!--                     <span class="icon-bar"></span> -->
<!--                     <span class="icon-bar"></span> -->
<!--                     <span class="icon-bar"></span> -->
<!--                 </button> -->
<!--                 <a class="navbar-brand" href="../loja/index.jsp">Loja Virtual</a> -->
<!--             </div> -->
<!--             Collect the nav links, forms, and other content for toggling -->
<!--             <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> -->
<!--                 <ul class="nav navbar-nav navbar-right"> -->
                   
<!--                     <li class="dropdown active"> -->
<!--                         <a href="#" class="dropdown-toggle" data-toggle="dropdown">Produtos <b class="caret"></b></a> -->
<!--                         <ul class="dropdown-menu"> -->
<!--                             <li class="active"> -->
<!--                                 <a href="../produtos/cadastro_produto.jsp">Cadastrar produto</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="../produtos/consulta_produto.jsp">Excluir ou alterar produto</a> -->
<!--                             </li> -->
<!--                         </ul> -->
<!--                     </li> -->
<!--                     <li class="dropdown active"> -->
<!--                         <a href="#" class="dropdown-toggle" data-toggle="dropdown">Suas Compras <b class="caret"></b></a> -->
<!--                         <ul class="dropdown-menu"> -->
<!--                             <li class="active"> -->
<!--                                 <a href="../compras/carrinho.jsp">Carrinho de compras</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="../clientes/historico_do_pedido.jsp">Historico de pedidos</a> -->
<!--                             </li> -->
<!--                         </ul> -->
<!--                     </li> -->
<!--                     <li class="dropdown active"> -->
<!--                         <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cliente <b class="caret"></b></a> -->
<!--                         <ul class="dropdown-menu"> -->
<!--                             <li class="active"> -->
<!--                                 <a href="../clientes/cadastro_cliente.jsp">Cadastrar cliente</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="../clientes/historico_do_pedido.jsp">Consultar cliente</a> -->
<!--                             </li> -->
<!--                         </ul> -->
<!--                     </li> -->
<!--                     <li class="dropdown active"> -->
<!--                         <a href="#" class="dropdown-toggle" data-toggle="dropdown">Relatorios <b class="caret"></b></a> -->
<!--                         <ul class="dropdown-menu"> -->
<!--                             <li class="active"> -->
<!--                                 <a href="consulta_cliente_relatorio.jsp">Pedidos por cliente</a> -->
<!--                             </li> -->
<!--                             <li> -->
<!--                                 <a href="relatorio_pedidos_data.jsp">Pedidos por data</a> -->
<!--                             </li> -->
<!--                         </ul> -->
<!--                     </li> -->
<!--                     <li class="dropdown active"> -->
<!--                         <a href="#" class="dropdown-toggle" data-toggle="dropdown">Usuario <b class="caret"></b></a> -->
<!--                         <ul class="dropdown-menu"> -->
<!--                             <li class="active"> -->
<!--                                 <a href="../clientes/alteracao.jsp">Alterar conta</a> -->
<!--                             </li>    -->
<!--                             <li class="active"> -->
<!--                                 <a href="../loja/login.html">Sair</a> -->
<!--                             </li>                         -->
<!--                         </ul> -->
<!--                     </li> -->
                    
                  
<!--                 </ul> -->
<!--             </div> -->
<!--             /.navbar-collapse -->
<!--         </div> -->
<!--         /.container -->
<!--     </nav> -->
<jsp:include page="../header.jsp" />

    <!-- Page Content -->
    <div class="container">
        <br><br><br>

        <h2>Relatorio de compras por data:</h2>
        <p>Selececine o intervalo para o relatorio</p>

   
          <p>Data incial : <input type="date" name="data_incial" id="data_incial" required></p>
          <p>Data final  : <input type="date" name="data_final" id="data_final" required></p>
          <p>Agora é só:</p><a href="../../RelatorioPedido" style=""><input type="button" value="Pesquisar" class="btn btn-success"></a>

          <table class="table" id="tabela">
            <thead>
              <tr>
                <th scope="col">Nº</th>
                <th>Numeração do pedido</th>
                <th>Data do pedido</th>
                
              </tr>
            </thead>
            <%
            HttpSession sessaoRecuperada = request.getSession();
    		Pedido pedid =  (Pedido) sessaoRecuperada.getAttribute("atributoPedido");
    		
    		
			%>
            <tbody  id="corpo">
              <tr>
			<td><%=pedid.getId() %></td>
			<td>12231223</td>
			<td><%=pedid.getDateRegistro() %></td>
			</tr>
		
            </tbody>
          </table>

        
        
        


    

    

       

        <hr>

      

        <hr>

        <!-- Pagination -->
        <!-- <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div> -->
        <!-- /.row -->

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