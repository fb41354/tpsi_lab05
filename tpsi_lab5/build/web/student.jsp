<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP lab5</title>
    </head>
    <body>
        <h1>Witaj studencie!</h1>
        <p>Oto licznik odwiedzin: ${sessionScope.visitCounter}</p>
    
    </body>
</html>
