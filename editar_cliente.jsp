<%-- 
    Document   : editar_cliente
    Created on : 05/06/2015, 11:38:42
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
						<a href="#" class="nav-dropdown-tamanho dropdown-toggle js-activated">Clientes<span class="caret" /></a>
						<ul class="dropdown-menu">

							<li role="presentation" class="dropdown-header"><span class="dropdown-header-tamanho">Física</span></li>
							<li class="cadastrar"><a href="Cadastra_cliente.jsp">Cadastrar<span class="glyphicon-cadastrar glyphicon glyphicon-plus-sign pull-right" /></a></li>
							<li class="listar"><a href="listar_cliente.jsp">Listar<span class="glyphicon-listar glyphicon glyphicon-list pull-right" /></a></li>
							<li class="divider"></li>

							<li role="presentation" class="dropdown-header"><span class="dropdown-header-tamanho">Juridica</span></li>
							<li class="cadastrar"><a href="cadastra_juridica.jsp">Cadastrar<span class="glyphicon-cadastrar glyphicon glyphicon-plus-sign pull-right" /></a></li>
							<li class="listar"><a href="listar_juridica.jsp">Listar<span class="glyphicon-listar glyphicon glyphicon-list pull-right" /></a></li>
						</ul>
					</li>

					

					<li class="dropdown">
						<a href="#" class="nav-dropdown-tamanho dropdown-toggle js-activated">Serviço<span class="caret" /></a>
						<ul class="dropdown-menu">
							<li class="cadastrar"><a href="#">Cadastrar<span class="glyphicon-cadastrar glyphicon glyphicon-plus-sign pull-right " /></a></li>
							<li class="listar"><a href="#">Listar<span class="glyphicon-listar glyphicon glyphicon-list pull-right" /></a></li>
						</ul>
					</li>

					<li class="dropdown">
						<a href="#" class="nav-dropdown-tamanho dropdown-toggle js-activated">Agendamento<span class="caret" /></a>
						<ul class="dropdown-menu">
							<li class="cadastrar"><a href="#">Cadastrar<span class="glyphicon-cadastrar glyphicon glyphicon-plus-sign pull-right " /></a></li>
							<li class="listar"><a href="#">Listar<span class="glyphicon-listar glyphicon glyphicon-list pull-right" /></a></li>
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


<div class="container">
	<h3 align="center"><b>Editar Cliente</b></h3>
	<br />
<%
String Nome = request.getParameter("nome");
String Sexo = request.getParameter("sexo");
String Cpf = request.getParameter("Cpf");
String Rg = request.getParameter("Rg");
String Email = request.getParameter("email");
String Telefone_resid = request.getParameter("Telefone_residencial");
String Telefone_celular = request.getParameter("Telefone_celular");
String Telefone_comercial=request.getParameter("Telefone_comercial");
String Area_negocios = request.getParameter("Area_negocios");
String Observacoes = request.getParameter("Observacoes");
String Site= request.getParameter("Site");
String dataNasci = request.getParameter("dataNascimento");
Integer cod = Integer.parseInt(request.getParameter("codigo"));
//Integer Enderecocod = Integer.parseInt(request.getParameter("codEndereco"));
String Cep = request.getParameter("Cep");
    String Cidade = request.getParameter("Cidade");
    String Uf = request.getParameter("Uf");
    String Bairro = request.getParameter("Bairro");
    String Endereco = request.getParameter("Endereco");
    String Numero= request.getParameter("Numero");
    String Complemento= request.getParameter("Complemento");
   // Integer codigo = Integer.parseInt(request.getParameter("codigo"));

%>
<form class="form" action="ProcessaCliente.jsp?action=Fisicaalterar" method="post">


			<div class="panel panel-primary">
				<div class="panel-heading">Dados Pessoais</div>

			<div class="panel-body">
			<div class="row">
                            <input type="hidden" name="codigo" value="<%=cod%>">
                            
			  	<div class="col-xs-6">
			  		<div class="form-group">
				    	<label for="nomeCliente">Nome</label>
                                        <input type="text" class="form-control" id="nomeCliente" name="nome" placeholder="nome completo" value="<%=Nome%>">
				    </div>
			  	</div>
			  	<div class="col-xs-6">
					<div class="form-group">
				    	<label for="sexoCliente">Sexo</label>
                                        <input type="radio" class="" id="sexoCliente" name="sexo" value="m"> Masculino
					<input type="radio" class="" id="sexoCliente" name="sexo" value="f"> Feminino
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xs-6">
		  			<div class="form-group">
				    	<label for="cpfCliente">CPF</label>
				    	<input type="text" class="form-control" id="cpfCliente" name="Cpf" style="width:200px;" placeholder="cpf sem pontuação" value="<%=Cpf%>">
		  			</div>
				</div>
		  		<div class="col-xs-6">
			  		<div class="form-group">
					    <label for="rgCliente">RG</label>
					    <input type="text" class="form-control" id="rgCliente" name="Rg" style="width:175px;" placeholder="rg sem pontuação" value="<%=Rg%>">
			    	</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xs-6">
			  		<div class="form-group">
			    		<label for="emailCliente">Email</label>
			    		<input type="email" class="form-control" id="emailCliente" name="email" placeholder="exemplo@mail.com" value="<%=Email%>" required>
			  		</div>
				 </div>

				 <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Telefone Residencial</label>
				    	<input type="text" class="form-control" id="telCliente" name="Telefone_residencial" style="width:175px;" placeholder="(61)9384-2344" value="<%=Telefone_resid%>">
				  	</div>
				</div>

                            <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Telefone Comercial</label>
				    	<input type="text" class="form-control" id="telCliente" name="Telefone_comercial" style="width:175px;" placeholder="(61)9384-2344" value="<%=Telefone_comercial%>">
				  	</div>
				</div>
                            <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Telefone Celular</label>
				    	<input type="text" class="form-control" id="telCliente" name="Telefone_celular" style="width:175px;" placeholder="(61)9384-2344" value="<%=Telefone_celular%>">
				  	</div>
				</div>
                            <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Area Negocios</label>
				    	<input type="text" class="form-control" id="telCliente" name="area_negocios" style="width:175px;" placeholder="(61)9384-2344" value="<%=Area_negocios%>">
				  	</div>
				</div>
                            <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Observações</label>
				    	<input type="text" class="form-control" id="telCliente" name="observacoes" style="width:175px;" placeholder="(61)9384-2344" value="<%=Observacoes%>">
				  	</div>
				</div>
                            <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Site</label>
				    	<input type="text" class="form-control" id="telCliente" name="site" style="width:175px;" placeholder="(61)9384-2344" value="<%=Site%>">
				  	</div>
				</div>
                            <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Data Nascimento</label>
				    	<input type="text" class="form-control" id="telCliente" name="data_nascimento" style="width:175px;" placeholder="(61)9384-2344" value="<%=dataNasci%>">
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
								<input type="text" class="form-control" id="cepCliente" name="cep" style="width:200px;" placeholder="cep sem pontuação" value="<%=Cep%>">
							</div>
						</div>
					</div>
 
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label for="cidadeCliente">Cidade</label>
								<input type="text" class="form-control" id="cidadeCliente" name="cidade" style="width:300px;" placeholder="nome da cidade" value="<%=Cidade%>">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="ufCliente">UF</label>
								<select class="form-control" id="ufCliente" name="uf" style="width:150px;" value="<%=Uf%>">
								  <option>DF</option>
								  <option>GO</option>
								</select>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="bairroCliente">Bairro</label>
								<input type="text" class="form-control" id="bairroCliente" name="bairro" style="width:300px;" placeholder="nome do bairro" value="<%=Bairro%>">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label for="endCliente">Endereço</label>
								<input type="text" class="form-control" id="endCliente" name="endereco" style="width:300px;" placeholder="endereço" value="<%=Endereco%>">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="numResidenciaCliente">Número</label>
								<input type="text" class="form-control" id="numResidenciaCliente" name="numero" style="width:100px;" placeholder="nº" value="<%=Numero%>">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="complementoEndCliente">Complemento</label>
								<input type="text" class="form-control" id="complementoEndCliente" name="complemento" style="width:300px;" placeholder="casa, apartamento, sitio, etc" value="<%=Complemento%>">
							</div>
						</div>
					</div>
				</div>
		</div>
		<div align="center">
			<button type="submit" class="btn btn-primary btn-lg">Alterar</button>
			<button type="submit" class="btn btn-danger btn-lg" data-target="listar_cliente.html">Voltar</button>
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

