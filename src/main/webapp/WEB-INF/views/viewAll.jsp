<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
   
    
       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 <link href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/all.min.css" rel="stylesheet"> 
  
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %> 
</head>
<body>

<div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">

                
                    <div class="panel panel-default">
                        <div class="panel-heading ">
                            <h1 class=" text-center mb-3">All RecordS</h1>
                        </div>
                                           <div class="container">
                                            <a href="add" class="btn btn-outline-success"> Add Product</a>
                                            </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                              
                                    <thead>
                                        <tr>
                                            <th>Id#</th>
                                            <th>Name</th>
                                            <th>Role</th>
                                            <th>Salary</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                               <c:forEach items="${employees }" var="e">
                                        <tr>
                                            <td>${e.id}</td>
                                            <td>${e.name}</td>
                                            <td>${e.role}</td>
                                            <td>${e.salary}</td>
                                            <td style="font-size: 25px;">
                                            <a href="delete/${e.id }"><i class="fas fa-trash text-danger"></i></a>
                                             <a href="update/${e.id }"><i class="fas fa-pen-nib "></i></a>
                                            </td>
                                        </tr>
                                   </c:forEach>
                                    </tbody>
                           
                                </table>
                            </div>
                        </div>
                    </div>
                 </div>
           </div>
         </div>  
         </div>
</body>
</html>