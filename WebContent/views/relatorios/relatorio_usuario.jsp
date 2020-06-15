<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="model.Cliente" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>Relatorio_usuario</title>
	<meta name="description" content="A minimalist Bootstrap theme by StartBootstrap. Contains everything you need to get started building your website. All you have to do is change the text and images.">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <script>
function Pesquisar(){
    document.getElementById("corpo").innerHTML="";
    var d1=document.getElementById('data_incial').value;
    var data1=new Date(d1);
    var d2=document.getElementById('data_final').value;
    var data2=new Date(d2);
    if(data1=="Invalid Date" || data2=="Invalid Date" ){
        alert('Selecione as duas datas do intervalo,antes de clicar em pesquisar!')
    }else{

        var pedidos = [
//	116511651656565165
    {
        'numeracao': '485511651656565165',
        'data': '29/03/2020',
    },

    {
        'numeracao': '789511651656565165',
        'data': '29/03/2020',
    },

    {
        'numeracao': '658511651656565165',
        'data': '29/03/2020',
    },

    {
        'numeracao': '145511651656565165',
        'data': '18/03/2020',
    },

    {
        'numeracao': '369511651656565165',
        'data': '18/03/2020',
    },

    {
        'numeracao': '777511651656565165',
        'data': '18/03/2020',
    },

    {
        'numeracao': '888511651656565165',
        'data': '05/03/2020',
    },

    {
        'numeracao': '999511651656565165',
        'data': '05/03/2020',
    },

    {
        'numeracao': '999511651656565165',
        'data': '05/03/2020',
    },

    

];

function FormataStringData(data) {
  var dia  = data.split("/")[0];
  var mes  = data.split("/")[1];
  var ano  = data.split("/")[2];

  return ano + '-' + ("0"+mes).slice(-2) + '-' + ("0"+dia).slice(-2);
  
}



// console.log(data1.getTime());
// console.log(data.getTime());





       
        for (var a = 0; a <pedidos.length; a ++) {

            var data = new Date(FormataStringData(pedidos[a].data));
            if( data.getTime() > data1.getTime() & data.getTime() < data2.getTime() ){
                document.getElementById("corpo").innerHTML += '<tr> <th scope="row">'+a+'</th><td>'+pedidos[a].numeracao+'</td><td>'+pedidos[a].data+'</td></tr>';
    
    }
           

    
}


    }
    
  

}

    </script>

</head>

<body>

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
<!--                             </li>   -->
<!--                             <li class="active"> -->
<!--                                 <a href="../loja/login.jsp">Sair</a> -->
<!--                             </li>                          -->
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
<%
		HttpSession sessaoRecuperada = request.getSession();
		Cliente cli= (Cliente) sessaoRecuperada.getAttribute("atributoCliente");

	%>
        <h2>Relatorio de compras do suario:<%=cli.getNome()%></h2>.
        <h2>Cpf:<%=cli.getCpf()%></h2>
        <!-- <p>Selececine o intervalo para o relatorio</p> -->

   
      

          <table class="table" id="tabela">
            <thead>
              <tr>
                <th scope="col">Nº</th>
                <th>Numeração do pedido</th>
                <th>Data do pedido</th>
              </tr>
            </thead>
            <tbody id="corpo">
              <tr>
                <th scope="row">1</th>
                <td>485511651656565165</td>
                <td>29/03/2020</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>789511651656565165</td>
                <td>18/03/2020</td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>658511651656565165</td>
                <td>05/03/2020</td>
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