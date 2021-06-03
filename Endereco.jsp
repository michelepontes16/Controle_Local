<%--
    Document   : funcionario
    Created on : 30/05/2015, 15:44:16
    Author     : PCPositivo
--%>
<% session = request.getSession();%>
<%@ include file="autenticacaoFunc.jsp" %>

<%@page import="java.util.ArrayList"%>


<%@page import="modelo.Funcionario"%>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Funcionário</title>

        <!-- Invocando o css principal -->
        <link href="Css/style/Estilo-Privado.css" rel="stylesheet">

        <!-- Invocando as Jquery-->
        <script src="Css/Jquery/jquery-1.11.2.min.js"></script>

        <!-- Script do Menu -->
        <script src="Scripts/Script-home/script-menu.js"></script>

        <!-- Invocando as classes do BootStrap -->
        <link rel="stylesheet" href="Css/bootstrap/css/bootstrap.css">
        <script src="Css/bootstrap/js/bootstrap.js"></script>

        <!-- Invocando o Css do bootStrap -->
        <link href="Css/bootstrap/css/agency.css" rel="stylesheet">

        <link href="Css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <script language="Javascript">
            function exibe(cod){
                //$("#lista").load("listaFunc.jsp", {codF: cod}, function() {
                window.open("exibeFunc.jsp?codF="+cod,'popup',"width=600px,height=650px, toolbar='no', location='no',left=" +
                    (document.documentElement.clientWidth - 600) / 2 + ",top=0"); //+ (document.documentElement.clientHeight - 100) / 2);
                //});
            }
            function altera(cod){
                window.open("alteraFunc.jsp?codF="+cod,'popup',"width=600px,height=650px,left=" +
                    (document.documentElement.clientWidth - 600) / 2 + ",top=0");
            }
            function cadCargo(){
                window.open("CadastraCargo.jsp",'popup',"width=600px,height=400px,left=" +
                    (document.documentElement.clientWidth - 600) / 2 + ",top=0");
            }


        </script>
    </head>
    <body>script language="Javascript">
            
            function listar(cod){
                window.open("alteraFunc.jsp?codF="+cod,'popup',"width=600px,height=650px,left=" +
                    (document.documentElement.clientWidth - 600) / 2 + ",top=0");
            }
            


        </script>
    <script language="Javascript">
            
            function listar(cod){
                window.open("alteraFunc.jsp?codF="+cod,'popup',"width=600px,height=650px,left=" +
                    (document.documentElement.clientWidth - 600) / 2 + ",top=0");
            }
            


        </script>
</body>
</html>
