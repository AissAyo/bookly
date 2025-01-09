<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOKLY-ADMIN</title>
<%@ include file="/include/css.jsp" %>

</head>
<body>

        
                  <form action="<%= request.getContextPath() %>/BookController" method="post">
            <label>
                <span>title</span>
                <input "type="text" name="title"/>
            </label>
            <label>
                <span>Description</span>
                <input type="Description" name="Description"/>
            </label>
             <label>
                <span>date</span>
                <input type="date" name="date"/>
            </label>
            
            <button type="submit" class="submit">add</button>
        </form>
</body>
</html>