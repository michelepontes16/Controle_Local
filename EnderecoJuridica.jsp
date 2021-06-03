<%-- 
    Document   : EnderecoJuridica
    Created on : 18/06/2015, 16:20:58
    Author     : Michele
--%>

<%@page import="modelo.Endereco"%>
<%@page import="Persistencia.EnderecoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

        EnderecoDAO dao = new EnderecoDAO();
        Endereco endereco=dao.pesquisar(Integer.parseInt(request.getParameter("cod")));
        String cep = endereco.getCep();
        String cidade = endereco.getCidade();
        String uf = endereco.getUf();
        String numero = endereco.getNumero();
        String end = endereco.getEndereco();
        String complemento = endereco.getComplemento();
        String bairro = endereco.getBairro();




%>



        <form role="form">
            <div class="row">
              <div class="col-xs-6">
                <div class="form-group">
                  <label for="cepCliente">CEP</label>
                  <input type="text" class="form-control" id="cepCliente" name="cepCliente" style="width:200px;" placeholder="cep sem pontuação" value="<%=cep%>" disabled>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-xs-6">
                <div class="form-group">
                  <label for="cidadeCliente">Cidade</label>
                  <input type="text" class="form-control" id="cidadeCliente" name="cidadeCliente" style="width:300px;" placeholder="nome da cidade" value="<%=cidade%>" disabled>
                </div>
              </div>
              <div class="col-xs-6">
                <div class="form-group">
                  <label for="ufCliente">UF</label>
                  <select class="form-control" id="ufCliente" name="ufCliente" style="width:150px;" value="<%=uf%>" disabled>
                    <option>DF</option>
                    <option>GO</option>
                  </select>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-xs-6">
                <div class="form-group">
                  <label for="bairroCliente">Bairro</label>
                  <input type="text" class="form-control" id="bairroCliente" name="bairroCliente" style="width:300px;" placeholder="nome do bairro" value="<%=bairro%>" disabled>
                </div>
              </div>
              <div class="col-xs-6">
                <div class="form-group">
                  <label for="endCliente">Endereço</label>
                  <input type="text" class="form-control" id="endCliente" name="endCliente" style="width:300px;" placeholder="endereço" value="<%=end%>" disabled>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-xs-6">
                <div class="form-group">
                  <label for="complementoEndCliente">Complemento</label>
                  <input type="text" class="form-control" id="complementoEndCliente" name="complementoEndCliente" style="width:300px;" placeholder="casa, apartamento, sitio, etc" value="<%=complemento%>" disabled>
                </div>
              </div>

              <div class="col-xs-6">
                <div class="form-group">
                  <label for="numResidenciaCliente">Número</label>
                  <input type="text" class="form-control" id="numResidenciaCliente" name="numResidenciaCliente" style="width:100px;" placeholder="nº" value="<%=numero%>" disabled>
                </div>
              </div>

            </div>
          </form>
    </body>
</html>
