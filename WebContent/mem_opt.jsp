<%@ page import ="java.sql.*" %>
<%@ page import="java.sql.*" %>



<%
 Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","aqamoula");
    Statement st = con.createStatement();
    String n=(String)session.getAttribute("memid");
    String q="update member set trainer='personal' where uname=?";
    PreparedStatement pst = con.prepareStatement(q);
    pst.setString(1,n);
    int i=pst.executeUpdate();
    //int i = st.executeUpdate(q);
    if (i > 0) {
        //session.setAttribute("userid", user);
       // response.sendRedirect("sucess.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    //out.println("trainer sucessfully changed");
    %>
    <script>
    
    window.location("mem_sucess.jsp");
   alert("trainer sucessfully changed");
    </script>
    <%
    } else {
    //    response.sendRedirect("index.jsp");
   // out.println("trainer not changed");
    	%>
        <script>
        
        window.location("mem_sucess.jsp");
       alert("trainer not changed");
        </script>
        <%
    }
%>