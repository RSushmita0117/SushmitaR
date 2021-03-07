<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<style>
.footer {
    position: fixed;
    bottom: 0;
    width:100%;
    height: 40px;
    background-color: tomato;
}

</style>


</head>
<body>


<header>
 <nav class="navbar navbar-expand-md navbar-dark"
  style="background-color: tomato">
  <div>
   <a href="https://www.javaguides.net" class="navbar-brand"> Todo App</a>
  </div>

  <ul class="navbar-nav navbar-collapse justify-content-end">
   <li><a href="<%= request.getContextPath() %>login" class="nav-link">Login</a></li>
   <li><a href="<%= request.getContextPath() %>register" class="nav-link">Signup</a></li>
  </ul>
 </nav>
</header>

        <div class="container">

            <h2>User Register Form</h2>
            <div class="col-md-6 col-md-offset-3">
                <div class="alert alert-success center" role="alert">
                    <p>${NOTIFICATION}</p>
                </div>

                <form action="<%=request.getContextPath()%>register" method="post">

                    <div class="form-group">
                        <label for="uname">First Name:</label> <input type="text" class="form-control" id="uname" placeholder="First Name" name="firstName" required>
                    </div>

                    <div class="form-group">
                        <label for="uname">Last Name:</label> <input type="text" class="form-control" id="uname" placeholder="last Name" name="lastName" required>
                    </div>

                    <div class="form-group">
                        <label for="uname">User Name:</label> <input type="text" class="form-control" id="username" placeholder="User Name" name="username" required>
                    </div>

                    <div class="form-group">
                        <label for="uname">Password:</label> <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
                    </div>
				
					<div class="form-group">
                    <button type="submit" class="btn btn-primary">Submit</button>
					 </div>
					 
                </form>
            </div>
        </div>
 
        
        <footer class="footer font-small black">
    <!-- Copyright -->
  <div class="footer-copyright text-center py-3" style="color: white">ToDo App 
        <a href="https://www.javaguides.net/" >  Sushmita </a>
      </div>
</footer>
<!-- Footer -->
        
</body>
</html>