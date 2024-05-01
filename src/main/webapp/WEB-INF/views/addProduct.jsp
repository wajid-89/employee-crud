<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add employee</title>
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
                          ADD Employee
                        </div>
                        <div class="panel-body">
                            <form action="addEmployee"  method="post" role="form">
                                        <div class="form-group">
                                            <label>Enter Employee Name</label>
                                            <input class="form-control" type="text" name="name" />
                                            
                                        </div>
                                        

                                           <div class="form-group">
                                            <label>Enter Role</label>
                                            <input class="form-control" type="text" name="role" />
                                            
                                        </div>
                                  
                                        
                                 <div class="form-group">
                                            <label>Enter Salary</label>
                                            <input class="form-control" type="number" name="salary" />
                                   
                                        </div>
                                        
                                       
                                        
                                        

                                 
                                         
                                        
                                 <div class="container text-center">
                                       
                                         <a href="view" class="btn btn-warning">Back</a>
                                          
                                       
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