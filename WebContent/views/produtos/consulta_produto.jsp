<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
 <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>Consultar produto</title>
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
        }*/

        
        function mostrar_radio() {

            var numeracao = document.getElementById("idproduto").value
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
    	   document.getElementById('form_consulta').submit();
    	  
       /* document.forms[0].action= "exclusao_de_produto.html"
            document.forms[0].submit()*/

       }else if(radio_selected=="alterar"){
    	   document.getElementById('opcao').value="alterar";
    	   document.getElementById('form_consulta').submit();
    	  
        /*document.forms[0].action= "alteracao.html"
            document.forms[0].submit()*/
       }else{
        alert("Escolha entre alterar ou excluir, por favor");
       }
       


            }else{
                alert("Preencha o campo de  numeracao do produto, por favor");
            }

        
       

    };
    </script>
</head>
<body>

     <jsp:include page="../header.jsp" />

    <!-- Page Content -->
    <div class="container">


        <h1>Informe o  nome do produto que voçê deseja excluir ou alterar cadastro:</h1>
    <form name="form1" id="form_consulta" method="post" action="../../Produto_srv">
        
     
        <p>Numeracao produto : <input type="number" name="idproduto" id="idproduto"></p>
       Operação:
            <input id="rad1"  name="group1" type="radio" value="excluir">Excluir</option>
            <input  id="rad2" name="group1" type="radio" value="alterar">Alterar</option>
            <input type="hidden" name="opcao" id="opcao" value="">

           <br><br>
        <input type="button" name="Consultar" id="consultar" value="Confirmar" onclick="mostrar_radio();">
       
    </form>
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../../js/bootstrap.min.js"></script>

</body>
</html>