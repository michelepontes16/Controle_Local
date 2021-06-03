<%--
    Document   : editar_cliente
    Created on : 05/06/2015, 11:38:42
    Author     : Paulo
--%>

<%@page import="modelo.Juridica"%>
<%@page import="Persistencia.DAOJuridica"%>
<%@page import="modelo.Endereco"%>
<%@page import="Persistencia.EnderecoDAO"%>
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

	<link rel="stylesheet" type="text/css" href="css/estilo.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

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
EnderecoDAO dao = new EnderecoDAO();
Endereco end = dao.pesquisar(Integer.parseInt(request.getParameter("codigo")));
String cep = end.getCep();
String bairro = end.getBairro();
String endereco = end.getEndereco();
String complemento = end.getComplemento();
String uf = end.getUf();
String numero = end.getNumero();
String cidade = end.getCidade();
DAOJuridica jur = new DAOJuridica();
Juridica juri = jur.pesquisar(Integer.parseInt(request.getParameter("cod")));
String nome = juri.getNome();
String nomeFantasia = juri.getNome_fantasia();
String cnpj = juri.getCnpj();
String observacoes = juri.getObservacoes();
String razaoSocial = juri.getRazao_social();
String site = juri.getSite();
String telefoneResi = juri.getTelefone_resid();
String telefoneComer = juri.getTelefone_comercial();
String telefoneCelular = juri.getTelefone_celular();
String email = juri.getEmail();
int cod = juri.getCodigo();

%>
<form class="form" action="ProcessaCliente.jsp?action=Juridicaalterar" method="post">


			<div class="panel panel-primary">
				<div class="panel-heading">Dados Pessoais</div>

			<div class="panel-body">
			<div class="row">
                            <input type="hidden" name="codigo" value="<%=cod%>">

			  	<div class="col-xs-6">
			  		<div class="form-group">
				    	<label for="nomeCliente">Nome</label>
                                        <input type="text" class="form-control" id="nomeCliente" name="nome" placeholder="nome completo" value="<%=nome%>">
				    </div>
			  	</div>
			  	
			</div>

			<div class="row">
				<div class="col-xs-6">
		  			<div class="form-group">
				    	<label for="cpfCliente">CNPJ</label>
				    	<input type="text" class="form-control" id="cpfCliente" name="cnpj" style="width:200px;" placeholder="cpf sem pontuação" value="<%=cnpj%>">
		  			</div>
				</div>
		  		<div class="col-xs-6">
			  		<div class="form-group">
					    <label for="rgCliente">Razao Social</label>
					    <input type="text" class="form-control" id="rgCliente" name="razao_social" style="width:175px;" placeholder="rg sem pontuação" value="<%=razaoSocial%>">
			    	</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xs-6">
			  		<div class="form-group">
			    		<label for="emailCliente">Email</label>
			    		<input type="email" class="form-control" id="emailCliente" name="email" placeholder="exemplo@mail.com" value="<%=email%>" required>
			  		</div>
				 </div>

				 <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Telefone Residencial</label>
				    	<input type="text" class="form-control" id="telCliente" name="Telefone_residencial" style="width:175px;" placeholder="(61)9384-2344" value="<%=telefoneResi%>">
				  	</div>
				</div>

                            <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Telefone Comercial</label>
				    	<input type="text" class="form-control" id="telCliente" name="Telefone_comercial" style="width:175px;" placeholder="(61)9384-2344" value="<%=telefoneComer%>">
				  	</div>
				</div>
                            <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Telefone Celular</label>
				    	<input type="text" class="form-control" id="telCliente" name="Telefone_celular" style="width:175px;" placeholder="(61)9384-2344" value="<%=telefoneCelular%>">
				  	</div>
				</div>
                            <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Nome Fantasia</label>
				    	<input type="text" class="form-control" id="telCliente" name="nome_fantasia" style="width:175px;" placeholder="(61)9384-2344" value="<%=nomeFantasia%>">
				  	</div>
				</div>
                            <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Observações</label>
				    	<input type="text" class="form-control" id="telCliente" name="observacoes" style="width:175px;" placeholder="(61)9384-2344" value="<%=observacoes%>">
				  	</div>
				</div>
                            <div class="col-xs-6">
				  	<div class="form-group">
				    	<label for="telCliente">Site</label>
				    	<input type="text" class="form-control" id="telCliente" name="site" style="width:175px;" placeholder="(61)9384-2344" value="<%=site%>">
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
								<input type="text" class="form-control" id="cepCliente" name="cep" style="width:200px;" placeholder="cep sem pontuação" value="<%=cep%>">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label for="cidadeCliente">Cidade</label>
								<input type="text" class="form-control" id="cidadeCliente" name="cidade" style="width:300px;" placeholder="nome da cidade" value="<%=cidade%>">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="ufCliente">UF</label>
								<select class="form-control" id="ufCliente" name="uf" style="width:150px;" value="<%=uf%>">
								  <option>DF</option>
								  <option>GO</option>
								</select>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="bairroCliente">Bairro</label>
								<input type="text" class="form-control" id="bairroCliente" name="bairro" style="width:300px;" placeholder="nome do bairro" value="<%=bairro%>">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label for="endCliente">Endereço</label>
								<input type="text" class="form-control" id="endCliente" name="endereco" style="width:300px;" placeholder="endereço" value="<%=endereco%>">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="numResidenciaCliente">Número</label>
								<input type="text" class="form-control" id="numResidenciaCliente" name="numero" style="width:100px;" placeholder="nº" value="<%=numero%>">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="complementoEndCliente">Complemento</label>
								<input type="text" class="form-control" id="complementoEndCliente" name="complemento" style="width:300px;" placeholder="casa, apartamento, sitio, etc" value="<%=complemento%>">
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

