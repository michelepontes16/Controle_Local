<%-- 
    Document   : enviaremail
    Created on : 14/06/2015, 23:10:03
    Author     : Paulo
--%>

<%@page import="Persistencia.SendMail"%>
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


try {
   new SendMail().sendMail("paulo100hs@gmail.com","controlelocal@gmail.com", "Orçamento", "nome endereço e tudo");
} catch (Exception ex) {
   throw new Exception("Erro no envio do email." + ex.getMessage());
}





%>



    </body>
</html>
