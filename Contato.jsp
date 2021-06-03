<%-- 
    Document   : Contato
    Created on : 18/06/2015, 14:45:50
    Author     : hananenogueira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html lang="pt-BR">
<head>
	<title> Contato </title>
        <link rel="icon" type="image/png" href="img/icone-camera.png">
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="css/font-awesome.css" rel="stylesheet">
	<link href="css/bootstrap-social.css" rel="stylesheet" >
</head>
<body>


    <br>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top"  style="background-color: transparent;
   background:#eee; border-color: #d6e9c6">
		<div class="container">
			<div class="navbar-header">
				<!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            		<span class="sr-only">Menu</span>
            		<span class="icon-bar"></span>
            		<span class="icon-bar"></span>
            		<span class="icon-bar"></span>
          		</button>
				 <a class="navbar-brand" href="#">
                                     <img alt="teste brand" src="img/logo.png" width="80px" height="50px">


				</a>
			</div>
			<!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-center">


                                        <li class="verde"><a href="index.jsp"> <font color="#000000"> Home </font> </a></li>
					<!-- <li class="separador"><a><span class="glyphicon glyphicon-record glyphicon-separador"></span></a></li> -->
					<li class="separador"><a><span class="glyphicon glyphicon-minus glyphicon-separador"></span></a></li>
					<li class="verde"><a href="QuemSomos.jsp"><font color="#000000">Quem Somos</font></a></li>
					<li class="separador"><a><span class="glyphicon glyphicon-minus glyphicon-separador"></span></a></li>
					<li class="verde"><a href="Contato.jsp"> <font color="#000000">Contato</font></a></li>
					<li class="separador"><a><span class="glyphicon glyphicon-minus glyphicon-separador"></span></a></li>

					<li class="verde"><a href="PerguntasFrequentes.jsp"> <font color="#000000"> Perguntas Frequentes </font> </a></li>

					<li class="separador"><a><span class="glyphicon glyphicon-minus glyphicon-separador"></span></a></li>



					<li class="verde"><a href="Downloads.jsp"> <font color="#000000"> Downloads </font> </a></li>
				</ul>
				
			</div><!--/.nav-collapse -->
		</div>
	</nav>
    <div class="container">
<div class="jumbotron" id="contato">

	<h2><b>Contato</b></h2>
	<br />
	

	<div class="media">
  		<div class="media-left media-middle">
      		<img class="media-object" src="img/thumb-contact.png" alt="Contato">
      	</div>

  		<div class="media-body">
    		<h4 class="media-heading">&nbsp Entre em contato conosco.</h4>
                <h4 class="media-heading">&nbsp Estamos à disposição.</h4>
    		<h4 class="media-heading">&nbsp Segunda-feira à Sexta-feira:<strong> 9h às 19h</strong></h4>
    		<h4 class="media-heading">&nbsp Sábado:  9h às 13h</h4>
    		<br />
    		<h4 class="media-heading">&nbsp Telefones para contato:<strong> (61) 3022-5665  –  (61) 9396-1176</strong></h4>
    		<br />
    		<h4 class="media-heading">&nbsp E-mail: contato@controlelocal.com.br</h4>
    		<br />
    		<h4 class="media-heading"><strong>&nbsp Nos consulte para orçamentos fora do horário de expediente.</strong></h4>
  		</div>
	</div>
        <br>
        <div id="Localizacao">
            <h4> Localização </h4>
                

 <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d1918.7651834058997!2d-48.0214036!3d-15.881261700000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sqn+7+conjunto+21+casa+10+riacho+fundo+I+!5e0!3m2!1spt-BR!2sbr!4v1434653115960" width="1000" height="450" frameborder="0" style="border:0"></iframe>

            

</div>


</div>
    </div>
<hr /><hr />


    </body>
</html>
