<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html lang="zh-CN">  
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
  	<link href="../css/bootstrap.min.css" rel="stylesheet">
  	<script src="../js/jquery-1.8.3.min.js"></script>
  	<script src="../js/bootstrap.min.js"></script>
    <title>测试</title>  
  </head>  
    
  <body> 
  <div class="container">
  	<div class="table-responsive">          
       <table class="table table-striped table-bordered">
         <thead>
           <tr>
             <th>用户名</th>
             <th>密码</th>
           </tr>
         </thead>
         <tbody>
           <tr>
             <td>${user.userName}</td>
             <td>${user.password}</td>
           </tr>
         </tbody>
       </table>
      </div>
      
   		<div class="row">
      		<div class="col-*-*"></div>
      		<div class="col-*-*"></div>      
   		</div>
   		
    </div>
  </body>  
</html>  
