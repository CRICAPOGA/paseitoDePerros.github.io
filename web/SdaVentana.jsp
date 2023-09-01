<%@page import="calculos.Calculos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <table class="tabla">
            <tr class="res">
                <th >Valor a pagar:</th>
                <td>
                    <%
                        int canPG=Integer.parseInt(request.getParameter("canPG"));
                        int canPM=Integer.parseInt(request.getParameter("canPM"));
                        int canPP=Integer.parseInt(request.getParameter("canPP"));
                        int horPG=Integer.parseInt(request.getParameter("horPG"));
                        int horPM=Integer.parseInt(request.getParameter("horPM"));
                        int horPP=Integer.parseInt(request.getParameter("horPP"));
                        Calculos c=new Calculos(canPG,canPM,canPP,horPG,horPM,horPP);
                        c.calcularCosT();
                        if ((canPG+canPM+canPP)>1){
                            c.calcularDescuento();
                        }
                        out.print(c.getCosT());
                    %>
                </td>
            </tr>
            <tr>
                <th><input type="button" value="CERRAR" name="b2" class="boton"></th>
            </tr>
        </table>
        <p>No sirve el botoncito XD</p>
    </body>
</html>
