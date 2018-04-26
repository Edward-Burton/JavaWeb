<%-- 
    Document   : factbig
    Created on : 2018-3-20, 9:01:51
    Author     : Administrator
--%>

<%@page import="java.math.BigInteger"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String nn=request.getParameter("n").trim();
            if(nn==null||nn.length()==0)
                nn="0";
            int n=Integer.parseInt(nn);
            BigInteger t=new BigInteger("1");
            for(int i=1;i<=n;i++){
                t=t.multiply(BigInteger.valueOf(i));
            }
            out.print(t);
            %>
    </body>
</html>
