
<%@ page import ="java.sql.*" %>
<%
    String fname = request.getParameter("fname");    
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String uname = request.getParameter("uname");
    String pass = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OFOS",
            "root", "qwerty");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into user(firstname, lastname, email, username, password) values ('" + fname + "','" + lname + "','" + email + "','" + uname + "','" + pass + "')");
    if (i > 0) {
         
        //session.setAttribute("userid", user);
        response.sendRedirect("mainlogin.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
