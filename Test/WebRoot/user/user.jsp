<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript">
 $(function () {
 	var options = {  
            currentPage: 1,  
            totalPages: $("#userTotalPage").val(),//总页数  
            numberofPages: 5,//显示的页数
            itemTexts: function (type, page, current) {  
                switch (type) {  
                    case "first":  
                        return "第一页";  
                    case "prev":  
                        return "<";  
                    case "next":  
                        return ">";  
                    case "last":  
                        return "最后页";  
                    case "page":  
                        return  page;  
                }                 
            },  
            onPageClicked: function (event, originalEvent, type, page) {  
                $.ajax({
                	type:"POST",
                	url:"",
                	data:{page:page,take:2},
                	dataType:"json", 
                	success: function(data){  
                	
                	}
                });
            }  
        };
        $("#example").bootstrapPaginator(options);
    });
</script>
	<!-- <h2 class="sub-header">用户列表</h2> -->
          <div class="table-responsive" id="userTable">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>用户ID</th>
                  <th>用户名</th>
                  <th>密码</th>
                  <th>年龄</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach var="lst" items="${list}">
                <tr>
                  <td><c:out value="${lst.id}"></c:out></td>
                  <td><c:out value="${lst.userName}"></c:out></td>
                  <td><c:out value="${lst.password}"></c:out></td>
                  <td><c:out value="${lst.age}"></c:out></td>
                </tr>
              </c:forEach> 
              </tbody>
            </table>
            <input  type="hidden" id="userTotalPage" value="${total}" />
          </div>
          
          <div>
          	<ul class="pagination" id="example"></ul>
          </div>
          
