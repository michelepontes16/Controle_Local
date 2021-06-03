<%-- 
    Document   : Cadastra_funcionario
    Created on : 05/06/2015, 17:16:19
    Author     : Paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html lang="pt-BR">
<head>
	<title>intranet</title>
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

        <script language="javascript" src="isEmpty.js"></script>
<script language="javascript" src="isCPFCNPJ.js"></script>

<script language=javascript>

function formata(src, mask)
{
  var i = src.value.length;
  var saida = mask.substring(0,1);
  var texto = mask.substring(i)
if (texto.substring(0,1) != saida)
  {
	src.value += texto.substring(0,1);
  }
}

function VALIDA() {

if(isCPFCNPJ(document.form1.cpf.value,1)) {
	alert('CPF OK');
}
else {
	alert('CPF INVALIDO');
}

}

</script>

</head>
<body>

	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            		<span class="sr-only">Toggle navigation</span>
            		<span class="icon-bar"></span>
            		<span class="icon-bar"></span>
            		<span class="icon-bar"></span>
          		</button>
			</div>
			<!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-center">

					<li class="dropdown">
						<a href="#" class="nav-dropdown-tamanho dropdown-toggle js-activated">Funcionário<span class="caret" /></a>
						<ul class="dropdown-menu">
							<li class="cadastrar"><a href="Cadastra_funcionario.jsp">Cadastrar<span class="glyphicon-cadastrar glyphicon glyphicon-plus-sign pull-right " /></a></li>
							<li class="listar"><a href="listar_funcionario.jsp">Listar<span class="glyphicon-listar glyphicon glyphicon-list pull-right" /></a></li>
						</ul>
					</li>


				</ul>
				<ul class="nav navbar-nav navbar-right">

					<li>
						<a href="index.jsp">Internet &nbsp
							<span class="glyphicon-sair glyphicon glyphicon-off"></span>
						</a>
					</li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>
<!--
<div class="container">
	<h1 align="center">Cadastro de Cliente</h1>
	<div class="row">
		<form class="form-inline">
			<div class="col-md-6">
				<h3 align="center">Dados Pessoais</h3><br />
				<label class="col-sm-3 control-label" for="nomeCliente">Nome:</label>
				<input class="form-control" type="text" id="nomeCliente" placeholder="digite seu nome">
			</div>
			<div class="col-md-6">
				<h3 align="center">Endereço</h3><br />
			</div>
		</form>
	</div>

</div>
-->

<div class="container">
	<h3 align="center"><b>Cadastrar Funcionario</b></h3>
	<br />

	<form class="form" action="ProcessaFuncionario.jsp?action=cadastrar" method="post">

			<div class="panel panel-primary">
				<div class="panel-heading">Dados Pessoais</div>

			<div class="panel-body">
			<div class="row">
			  	<div class="col-xs-6">
			  		<div class="form-group">
				    	<label for="nomeFuncionario">Nome</label>
				    	<input type="text" class="form-control" id="nomeCliente" name="nome" placeholder="nome completo">
				    </div>
			  	</div>
			  	<div class="col-xs-6">
			  		<div class="form-group">
					    <label for="rgCliente">RG</label>
					    <input type="text" class="form-control" id="rgCliente" name="rg" style="width:175px;" placeholder="rg sem pontuação">
			    	</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xs-6">
		  			<div class="form-group">
				    	<label for="cpfCliente">CPF</label>
				    	<input type="text"class="form-control" id="cpfCliente"  name="cpf" style="width:200px;" placeholder="cpf " onKeyPress="formata(this,'###.###.###-##')">
		  			</div>
				</div>
		  		<div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Telefone</label>
				    	<input type="text" class="form-control" id="telCliente" name="telefone" style="width:175px;" placeholder="telefone">
				  	</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xs-6">
			  		<div class="form-group">
			    		<label for="emailCliente">Email</label>
			    		<input type="email" class="form-control" id="emailCliente" name="email" placeholder="exemplo@mail.com" required>
			  		</div>
				 </div>

				 
			</div>

		</div>
	</div>



		<div class="panel panel-primary">
				<div class="panel-heading">Endereço</div>
				<div class="panel-body">

					<div class="row">
						<div class="col-xs-6">
							<div class="form-group">
								<label for="cepCliente">CEP</label>
								<input type="text" class="form-control" id="cepCliente" name="cep" style="width:200px;" placeholder="cep ">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label for="cidadeCliente">Cidade</label>
								<input type="text" class="form-control" id="cidadeCliente" name="cidade" style="width:300px;" placeholder="nome da cidade">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="ufCliente">UF</label>
								<select class="form-control" id="ufCliente" name="uf" style="width:150px;">
								  <option>DF</option>
								  <option>GO</option>
								</select>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="bairroCliente">Bairro</label>
								<input type="text" class="form-control" id="bairroCliente" name="bairro" style="width:300px;" placeholder="nome do bairro">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label for="endCliente">Endereço</label>
								<input type="text" class="form-control" id="endCliente" name="endereco" style="width:300px;" placeholder="endereço">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="numResidenciaCliente">Número</label>
								<input type="text" class="form-control" id="numResidenciaCliente" name="numero" style="width:100px;" placeholder="nº">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="complementoEndCliente">Complemento</label>
								<input type="text" class="form-control" id="complementoEndCliente" name="complemento" style="width:300px;" placeholder="casa, apartamento, sitio, etc">
							</div>
						</div>
					</div>
				</div>
		</div>

            <div class="panel panel-primary">
				<div class="panel-heading">Login e Senha</div>
				<div class="panel-body">

					<div class="row">
						<div class="col-xs-6">
							<div class="form-group">
								<label for="cepCliente">Login</label>
								<input type="text" class="form-control" id="cepCliente" name="login" style="width:200px;" placeholder="login">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label for="cidadeCliente">Senha</label>
								<input type="text" class="form-control" id="cidadeCliente" name="senha" style="width:200px;" placeholder="senha">
							</div>
						</div>

						
					</div>


				</div>
		</div>
		<div align="center">
			<button type="submit" class="btn btn-primary btn-lg" onClick="VALIDA">Enviar</button>
			<button type="button " onclick="location.reload()"value="Cadastrar"class="btn btn-danger btn-lg">Limpar</button>
		</div>

	</form>
</div>


<script src="js/hover-dropdown.js"></script>
<script>
    // very simple to use!
    $(document).ready(function() {
      $('.js-activated').dropdownHover().dropdown();
    });
  </script>

  <script>
      var _gaq=[['_setAccount','UA-28756144-1'],['_trackPageview']];
      (function(d,t) {
          var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
          s.parentNode.insertBefore(g,s)
      }(document,'script'));
  </script>

</body>
</html>
