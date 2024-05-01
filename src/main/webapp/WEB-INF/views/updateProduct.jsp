<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<div class="container mt-4">
 <div class="row">
            <div class="col-md-6 offset-md-3">
            <div class="card">
            <div class="card-body">
               <div class="panel panel-info">
                        <div class="panel-heading">
                          Update Employee
                        </div>
                        <div class="panel-body">
                            <form action="${pageContext.request.contextPath }/updateEmployee"  method="post" role="form">
                            
                            <div class="form-group">
                                            <label>Id</label>
                                            <input class="form-control" type="text" name="id"  value="${employee.id}"/>
                                            
                                        </div>
                                        <div class="form-group">
                                            <label> Product Name</label>
                                            <input class="form-control" type="text" name="name"  value="${employee.name}"/>
                                            
                                        </div>
                                        

                                         <div class="form-group">
                                            <label> Product Name</label>
                                            <input class="form-control" type="text" name="role"  value="${employee.role}"/>
                                            
                                        </div>
                                  
                                        
                                 <div class="form-group">
                                            <label>Price</label>
                                            <input class="form-control" type="number" name="salary" value="${employee.salary }" />
                                   
                                        </div>
                                        

                                        
                                 <div class="container text-center">
                                       
                                         <a href="${pageContext.request.contextPath}/view" class="btn btn-warning">Back</a>
                                          
                                       
                                          <button type="submit" class="btn btn-info">Submit </button> 
                                      </div>
                                    </form>
                            </div>
                        </div>
                            </div>
                                </div>
                                    </div>
                                       </div>
                                    </div>
</body>
</html>