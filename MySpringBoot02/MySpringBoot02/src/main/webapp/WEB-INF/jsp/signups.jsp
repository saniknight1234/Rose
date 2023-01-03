<!DOCTYPE html>
<%@page import="com.sani.cubic.MySpringBoot02.dto.CustomerSignup"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.sani.cubic.MySpringBoot02.repo.SignupStore"%>

<%@page import="java.util.List"%>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Signup</title>
</head>
<body>
	<header style="height: 30px; background-color: #545b62;"></header>
	<div class="container">
	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4ybOeJ1hAsBrFGPWMrF_FxieJ8NNWQZkqWg&usqp=CAU" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"> 
	 <img src="images/st-one.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
	 <hr>
	 
	 <hr>
	 <h2>Signup Page</h2>
	 <hr>
	 <a href="hello.jsp"><button type="button" class="btn btn-secondary">Login</button></a>
	 
	 <br>
	  <table class="table table-striped">
    <thead style="background-image: url('https://www.toptal.com/designers/subtlepatterns/uploads/moroccan-flower.png')">
      <tr>
        <th>Username</th>
        <th>Password</th>
        <th>Email</th>
        <th>Mobile</th>
        
        <th>Gender</th>
         <th>Address</th>
         <th>Image</th>
         <th>Action</th>
      </tr>
    </thead>
    <tbody>
    <%
    	List<CustomerSignup> signups = (List<CustomerSignup> )request.getAttribute("data");
    	for(CustomerSignup signup: signups){
    %>
      <tr>
        <td><%=signup.getUsername() %></td>
        <td><%=signup.getPassword() %></td>
        <td><%=signup.getEmail() %>td>
        <td><%=signup.getMobile() %></td>
        
        <td><%=signup.getGender() %></td>
        <td><%=signup.getAddress() %></td>
        <td> <img alt="<%=signup.getUsername() %>" src=" <%=signup.getImage() %>" style="height: 60px; width: 50px"></td>
        <td>
        <a href="delete?username=<%=signup.getUsername() %>">
        <button type="submit" class="btn btn-danger">Delete</button>
         </a>
        </td>
      </tr>
      <%
    	}
      %>
  
  </table>
	  <hr>
  		<a href="kiki">
  		
  		<marquee direction="right" scrolldelay="100"><img src="images/st-one.jpg" class="img-thumbnail" alt="Cinque Terre" width="100" height="70"></marquee>
  		</a>
	 </form>
	</div>

</body>
</html>