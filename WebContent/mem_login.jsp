<%@ page import ="java.sql.*" %>
<%
    String memid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","aqamoula");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from member where uname='" + memid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("memid", memid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("mem_sucess.jsp");
    } else {
        //out.println("Invalid password <a href='index.jsp'>try again</a>");
        		%>
        		 <script>
        
        window.location("index.html");
       alert("Invalid password");
        </script>
        		<%
    }
%>