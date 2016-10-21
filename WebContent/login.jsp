<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","aqamoula");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from manager where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("sucess.jsp");
    } else {
        out.println("Invalid password <a href='mlogin.jsp'>try again</a>");
    }
%>