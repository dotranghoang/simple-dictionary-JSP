<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Do Trang Hoang PC
  Date: 19/09/2019
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
    <%!
        Map<String,String> dic = new HashMap<>();
    %>

    <%
        dic.put("hello","Xin chào");
        dic.put("how","Thế Nào");
        dic.put("book","Quyển vở");
        dic.put("computer","Máy tính");

        String search = request.getParameter("text");

        String result = dic.get(search);
        if (result != null) {
            out.println("Word: " + search ); %>
    <br/>
    <%
            out.println("Result: "+ result);
        } else {
            out.println("Not Found");
        }
    %>
</body>
</html>
