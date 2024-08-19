<%@page import="java.util.ArrayList"%>
<html>
<body>
<%
    ArrayList<String> ls = new ArrayList<>();
    ls.add("Shampoo");
    ls.add("Pencil");
    ls.add("Soap");
    ls.add("Chair");
    ls.add("Bag");
%>
<h2>List of products:-</h2>
<ul>
    <%
        for(String product:ls){
    %>
            <li><%out.print(product);%></li>
    <%
        }
    %>
</ul>
</body>
</html>
