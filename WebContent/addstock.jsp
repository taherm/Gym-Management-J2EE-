<%@ page import ="java.sql.*" %>
<%
    String n = request.getParameter("name");    
    String s = request.getParameter("stock");
    

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","aqamoula");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into stock(name,stock,stock_date) values ('" + n + "','" + s + "',sysdate)");
    if (i > 0) {
        //session.setAttribute("userid", user);
       // response.sendRedirect("sucess.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
   // out.println("Stock sucessfully added");
   %>
   <script>
    
    window.location("sucess.jsp");
   alert("Stock sucessfully added");
    </script>
   <%
    } else {
    //    response.sendRedirect("index.jsp");
    //out.println("Stock not added");
    %>
     <script>
    
    window.location("addstock_html.jsp");
   alert("Stock not sucessfully added");
    </script>
    <%
    }
%>