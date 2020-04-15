<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>studenci</title>
        
        <style>
            table, th, td {
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
            
        <p>Lista studentów: </p>
        <br>
        <table style="width:100%">
           <tr>
                <th>Imie</th>
                <th>Nazwisko</th>
                <th>Email</th>
           </tr>
        <c:forEach items="${students}" var="student">
            
            <tr>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>${student.email}</td>
            </tr>
            
        </c:forEach>
        </table>
            
        <br>
        <form action='/lab5/studentsTable' method='post'>
                Imię studenta:
            <input type='text' name='imie'>
         
            <br>
                nazwisko:
            <input type='text' name='nazwisko'>
            <br>
          
                email:
            <input type='text' name='email'>
            
            <input type='submit'>
            
        </form>
        
    </body>
</html>
