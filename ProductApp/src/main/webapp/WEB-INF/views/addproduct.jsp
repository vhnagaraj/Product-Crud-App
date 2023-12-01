<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>

<style>
    body {
        background-image: url('/ProductApp/resources/images/fro.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

     .form-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 130vh; 
        margin-top: 15vh; 
    }

      .form-box {
        position: fixed;
        top: 50%; /* Adjust the top value as needed */
        left: 50%;
        transform: translate(-50%, -50%);
        width: 300px; /* Set a fixed width for the square box */
        height: 300px; /* Set a fixed height for the square box */
        background-color: rgba(255, 255, 255, 0.8); /* Background color with transparency */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    }
</style>

</head>
<body>
 

<div class="form-container">
    <div class="form-box">
    
    
        <form action="submit" method="post">
        
       
        
            <div class="form-group" style="text-align: center;">
                <label for="exampleFormControlInput1"><h5 style="color: black;">Product Name</h5></label>
                <input type="name" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" name="name">
            </div>
            <div class="form-group" style="text-align: center;">
                <label for="exampleFormControlInput1"><h5 style="color: black;">Description</h5></label>
                <textarea rows="5" class="form-control" placeholder="enter the details" name="description"></textarea>
            </div>
            <div class="form-group" style="text-align: center;">
                <label for="exampleFormControlInput1"><h5 style="color: black;">Price</h5></label>
                <input type="text" class="form-control" id="price" placeholder="enter the price" name="price">
            </div>
            <div class="container text-center">
                <a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
                <button type="submit" class="btn btn-primary">ADD</button>
            </div>
            
            
        </form>
    </div>
</div>
</body>
</html>
