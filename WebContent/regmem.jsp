<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String w = request.getParameter("weight");
    String h = request.getParameter("height");
    String t = request.getParameter("trainer");
    String b = request.getParameter("batch");

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","aqamoula");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into member(batch,weight,height,trainer,first_name, last_name, email, uname, pass, regdate) values ('" + b + "','" + w + "','" + h + "','" + t + "','" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', sysdate)");
    if (i > 0) {
        //session.setAttribute("userid", user);
       // response.sendRedirect("sucess.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    //out.println("member sucessfully added");
    %>
    <html>
    <script>
    
    window.location("sucess.jsp");
   alert("member sucessfully added");
    </script>
 
    
    <%
    } 
    else {
    	%>
    	<script>
    	
    	window.location("addmember_html.jsp");
    	alert("member not added");
    	</script>
    	</html>
    	<%
    //    response.sendRedirect("index.jsp");
    //out.println("member not added");
    }
%>