<%@ page import ="java.sql.*" %>
<%
 Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con= DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","aqamoula");
    Statement st = con.createStatement();
    String query2="select stock from stock where name=?" ;
    PreparedStatement pst2 = con.prepareStatement(query2);

    
    int q = Integer.parseInt(request.getParameter("quan"));
    String n = request.getParameter("uname");
    pst2.setString(1,n);
   
   
    
    ResultSet rs2 =pst2.executeQuery();
    int t2=0;
    while(rs2.next())
    {
    t2=rs2.getInt(1);
    }
    if(t2<q)
    {
    	out.println("not enough stock");
    }
    else
    {
    int t3=t2-q;
    
    
    
    int p=1;
    if(n.equals("protein_shake"))
    	p=21*q;
    else if(n.equals("bottle"))
    	p=10*q;
    else if(n.equals("weight_gainer"))
    	p=52*q;
    else if(n.equals("muscle_builder"))
    	p=53*q;
    
    	
    String nm=(String)session.getAttribute("memid");
    String query="insert into buy values(?,?,?,?)" ;
    PreparedStatement pst = con.prepareStatement(query);

    pst.setString(1,nm);
    pst.setString(2,n);
    pst.setInt(3,q);
    pst.setInt(4,p);
    int i=pst.executeUpdate();
    //int i = st.executeUpdate(q);
    if (i > 0) {
    	String qq="update stock set stock=? where name=?";
    	PreparedStatement pst3 = con.prepareStatement(qq);
    	pst3.setInt(1,t3);
		pst3.setString(2,n);
		pst3.executeUpdate();
		//session.setAttribute("userid", user);
       // response.sendRedirect("sucess.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    out.println("purchase sucessfull");
    out.println("Bill :");
    out.println("Name:"+nm);
    out.println("Product:"+n);

    out.println("Quantity:"+q);
    out.println("Total Price:"+p);
    
    } else {
    //    response.sendRedirect("index.jsp");
    out.println("purchase unsucessfull");
    }
    }
    
%>