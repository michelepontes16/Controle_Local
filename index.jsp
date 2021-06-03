<%-- 
    Document   : index
    Created on : 03/06/2015, 20:26:11
    Author     : Paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html lang="pt-BR">
<head>
	<title>Controle Local</title>
         <link rel="icon" type="image/png" href="img/icone-camera.png">
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="css/font-awesome.css" rel="stylesheet">
	<link href="css/bootstrap-social.css" rel="stylesheet" >
<!--
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
-->
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

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

                                      
                                        <li class="verde"><a href="#"> <font color="#000000"> Home </font> </a></li>
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
					
				<ul class="nav navbar-nav navbar-right verde">

					<li>
						<button type="button" class="botao pull-right" data-toggle="modal" data-target="#myModal">
  							Intranet &nbsp
  							<span class="glyphicon glyphicon-log-in"></span>
						</button>
						<!-- <a href="login-intranet.html">Intranet &nbsp

						</a>-->
					</li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>

<!-- Modal -->
<div class="container">
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header modal-header-login" style="padding:35px 50px;">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4><span class="glyphicon glyphicon-lock"></span> Controle Local</h4>
			</div>
			<div class="modal-body" style="padding:40px 50px;">
				<form role="form" method="post" action="processa_login.jsp">
					<div class="form-group has-success">
						<label for="usrname"><span class="glyphicon glyphicon-user"></span>Login</label>
						<input type="text" class="form-control" id="usrname" placeholder="ex: joao" style="width:500px;"name="login">
					</div>
					<div class="form-group has-success">
						<label for="psw"><span class="glyphicon glyphicon-eye-open"></span>Senha</label>
						<input type="password" class="form-control" id="psw" placeholder="******" style="width:500px;"name="senha">
					</div>

					<button type="submit" class="btn btn-success btn-block" style="width:100px; float: right;">Entrar</button>

                                </form>
			</div>
			<div class="modal-footer modal-footer-login" style=" text-align: center; background-color:#BFDAAF">
                            Copyright Controle Local &copy;2015 - Todos os direitos reservados.
                        </div>
		</div>
    </div>
</div>
</div>







<div class="container">
<div class="modal fade" id="orcaModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header modal-header-orcamento" style="padding:35px 50px;">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4>Orçamento</h4>
			</div>
			<div class="modal-body" style="padding:20px 10px;">

				<form id="registrationForm" class="form-horizontal">

					<div class="form-group">
						<label class="col-xs-3 control-label">Nome</label>
						<div class="col-xs-5">
							<input type="text" class="form-control" name="nome" style="width:300px;"/>
						</div>
					</div>

					<div class="form-group">
						<label class="col-xs-3 control-label">Email</label>
						<div class="col-xs-5">
							<input type="email" class="form-control" name="email" style="width:300px;"/>
						</div>
					</div>

					<div class="form-group">
						<label class="col-xs-3 control-label">Telefone</label>
						<div class="col-xs-5">
							<input type="text" class="form-control" name="telefone" style="width:300px;"/>
						</div>
					</div>

					<div class="form-group">
						<div class="col-xs-9 col-xs-offset-3">
							<button type="submit" class="btn btn-primary btn-lg" name="signup" value="Sign up">Enviar</button>
						</div>
					</div>
				</form>

			</div>
			<div class="modal-footer modal-footer-login" style=" text-align: center; background-color:#BFDAAF">
                            Copyright Controle Local &copy;2015 - Todos os direitos reservados.
                        </div>
		</div>
    </div>
</div>

</div>

<div class="container">

<!-- Carrousel de Imagens-->
<div class="row row-offcanvas row-offcanvas-right">

<div class="col-xs-12 col-sm-9">
		<p class="pull-right visible-xs">
			<button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Menu</button>
		</p>

	<div class="jumbotron">
		<!-- Inicia o Carrousel -->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<a href="#"><img src="img/camera1.jpg" alt="slide1" class="center"></a>
					<div class="carousel-caption">
						<h2><b>CONTROLE LOCAL</b></h2>
						<p>Quando você está longe, eu sou seus olhos</p>
					</div>
				</div>

				<!-- Imagens -->
				<div class="item">
					<a href="#"><img src="img/camera2.jpg" alt="slide2" class="center"></a>
					<div class="carousel-caption">
						<h2><b>CONTROLE LOCAL</b></h2>
						<p> Sua empresa merece o máximo
                                                em qualidade e tecnologia</p>
					</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Anterior</span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Próximo</span>
			</a>
		</div><!-- Fecha o Carrousel -->
	</div><!-- Fecha o jumbotron -->

<!-- Imagens com texto pequeno -->



</div><!--/.col-xs-12.col-sm-9-->

<div class="row">
	<div class="col-xs-6 col-sm-3">
		<div class="container">
			<div class="panel panel-success text-center" style="width:320px; height:250px;">
				<div class="panel-heading">
					<strong>Faça seu pedido de Orçamento</strong>
				</div>
				<div class="panel-body">
					<a href="#orcaModal" data-toggle="modal"><img class="img-thumbnail orcamento" src="img/icone-orcamento.gif" >
					<br />
					</a>
					<br />
					<button type="button" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#orcaModal">Solicitar</button>
				</div>
			</div>
		</div>
	</div>

	<div class="col-xs-6 col-sm-3">
		<div class="container"><br />
			<div class="panel panel-success" style="width:320px; ">
				<div class="panel-heading">
					<strong>Mais sobre nós</strong>
				</div>
				<div class="panel-body">
					<div class="text-center">
						<a class="btn btn-lg btn-social-icon btn-google" href="http://www.google.com.br"><i class="fa fa-google-plus"></i></a>
						<a class="btn btn-lg btn-social-icon btn-instagram" href="#"><i class="fa fa-instagram"></i></a>
						<a class="btn btn-lg btn-social-icon btn-linkedin" href="#"><i class="fa fa-linkedin"></i></a>
						<a class="btn btn-lg btn-social-icon btn-twitter" href="#"><i class="fa fa-twitter"></i></a>
						<a class="btn btn-lg btn-social-icon btn-facebook" href="http://www.facebook.com.br"><i class="fa fa-facebook"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


</div>
<script src="js/hover-dropdown.js"></script>
<script>
  $(document).ready(function() {
      $('.js-activated').dropdownHover().dropdown();
    });

    var _gaq=[['_setAccount','UA-28756144-1'],['_trackPageview']];
      (function(d,t) {
          var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
          s.parentNode.insertBefore(g,s)
    }(document,'script'));

    $(document).ready(function(){
      $("#myBtn").click(function(){
        $("#myModal").modal();
      });
  });

  $(document).ready(function(){
      $("#myBtn").click(function(){
          $("#myModal").modal();
      });
  });
</script>

<div id="posrodape" style=" text-align: center; background-color:#BFDAAF; padding:35px 50px; position:absolute; bottom: 0; width: 100%; position: fixed; bottom: 0; left: 0;">
                    Copyright Controle Local &copy;2015 - Todos os direitos reservados.
  </div>
</body>
</html>

<!--
Cameras de Segurança
http://innercontrol.com.br/camera-de-seguranca.html?gclid=CL-Z-_W6rcUCFYw8gQodsJsAMg
-->