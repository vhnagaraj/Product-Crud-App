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
    
   
</style>



</head>
<body style="background-image: webapp/BBBB.jpg ">


<h1 style="text-align: center; color: red" >Update Form</h1>





<hr>

<form action="${pageContext.request.contextPath}/submit" method="post">

<input type="text" value="${product.id }" name="id"/>



  <div class="form-group" style="text-align: center;">
    <label for="exampleFormControlInput1"><h5>Product Name</h5></label>
    <input type="name" 
    class="form-control" 
    id="exampleFormControlInput1" 
    placeholder="name@example.com"
    value="${product.name }"
    name="name">
  </div>
  
  <div class="form-group" style="text-align: center;">
    <label for="exampleFormControlInput1"><h5>Description</h5></label>
   <textarea rows="5"
   class="form-control"
   placeholder="enter the details"
   ${product.description}
   name="description"></textarea>
  </div>
  
  
  <div class="form-group" style="text-align: center;">
    <label for="exampleFormControlInput1 "><h5>Price</h5></label>
    <input type="text" 
    class="form-control" 
    id="price" 
    placeholder="enter the price"
    name="price"
    value="${product.price }">
    
  </div>
  
  <div class="container text-center">
  <a href="${pageContext.request.contextPath }/" 
  class="btn btn-outline-danger">Back</a>
  <button type="submit" class="btn btn-primary">Update</button>
 </div>
 
  
</form>

</body>
</html>