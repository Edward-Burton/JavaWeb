<%-- 
    Document   : factsmall
    Created on : 2018-3-20, 8:51:15
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nn=request.getParameter("n");
            if(nn==null||nn.trim().length()==0)
                nn="0";
            int n=Integer.parseInt(nn);
            double t=1;
            for(int i=1;i<=n;i++){
                t=t*i;
            }
            out.print(t);
            %>
    </body>
</html>
