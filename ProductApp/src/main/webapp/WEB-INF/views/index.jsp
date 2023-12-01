<html>
<head>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
    body {
        background-image: url('/ProductApp/resources/images/fro.jpg');
        background-size: cover;
        background-repeat: no-repeat;
       background-attachment: fixed;
    }
</style>




</head>
<body>

<div class="container mt-3">

<div class="row">

<div class="col-md-12">


<h1 class="text-center mb-3" style="color: black;">Welcome to Product App</h1>

<table class="table">
  <thead class="thead-dark">
    <tr style="color: black;">
      <th scope="col">ID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Edit</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${products }" var="p">
  
  <tr style="color: black;">
  <th scope="row">SpY${p.id }</th>
  <td>${p.name }</td>
  <td>${p.description}</td>
  <td class="font-weight-bold">${p.price}</td>
  <td>
  <a href="delete/${p.id }"><i class="fa-solid fa-trash-can text-danger"></i></i></a>
  <a href="update/${p.id }"><i class="fa-solid fa-pen"></i></a>
  </td>
  </tr>
  
  </c:forEach>
  
  
  </tbody>
</table>

<div class="container text-center">

<a href="addproduct" class="btn btn-outline-success">Add-Product</a>

</div>



</div>

</div>


</div>



</body>


</html>
