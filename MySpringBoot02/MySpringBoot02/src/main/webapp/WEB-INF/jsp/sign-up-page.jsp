<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password], input[type=number] {
  width: 40%;
  padding: 4px;
  margin: 3px 0 17px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
<body>

<form action="signup01" method="post" style="border:1px solid #ccc">
  <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

	<label for="username"><b>Phone Number</b></label><br>
    <input type="text" placeholder="user name" name="username"><br>
    
     <label for="psw"><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="psw" required><br>
    
    <label for="email" ><b>Email</b></label><br>
    <input type="text" placeholder="Enter Email" name="email" required><br>

    <label style="width: 50%" for="mobile"><b>Phone Number</b></label><br>
    <input type="number" placeholder="phone number" name="mobile"><br>
    
    <label for="image"><b>Image</b></label><br>
    <input type="text" placeholder="image link" name="image"><br>
    
    <label for="gender"><b>Gender</b></label><br>
    <select name="gender" class="from-control" style="width: 40%">
	 	<option>Male</option>
	 	<option>Female</option>
	 
	 </select>
    <br>
    <label for="address"><b>Address</b></label><br>
    <input type="text" placeholder="address" name="address"><br>
    
    
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  
</form>

</body>
</html>
