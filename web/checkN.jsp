<%-- 
    Document   : checkN
    Created on : 2018-3-20, 8:44:45
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
            //通过request对象得到表单中输入的整数
            String nn=request.getParameter("n");
            if(nn==null||nn.trim().length()==0)
                nn="0";
            int n=Integer.parseInt(nn);
            if(n>=50){
                %>
                <jsp:forward page="factbig.jsp"/><%--不需参数传递,能传至下一个页面--%>
                <%
               // response.sendRedirect("factbig.jsp?n="+n);需参数传递
            }
            else{
                //response.sendRedirect("factsmall.jsp?n="+n);
                //使用request对象的setAttribute()保存参数
                request.setAttribute("number",n);
                response.sendRedirect("factsmall.jsp");//传递不成功
            }
            %>
    </body>
</html>
