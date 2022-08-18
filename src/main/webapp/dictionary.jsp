<%--
  Created by IntelliJ IDEA.
  User: PV
  Date: 18/08/2022
  Time: 2:03 CH
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% Map<String, String> dic = new HashMap<>();
%>

<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("txtSearch");

    String result = dic.get(search);

    PrintWriter writer = response.getWriter();
    if (result != null){
        writer.println("Word: " + search);
        writer.println("Result: " + result);
    }
    else {
        writer.println("Not found");
    }

%>


</body>
</html>
