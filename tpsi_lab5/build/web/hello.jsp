<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Java Web - laboratorium 4</title>
    </head>
    
    <body>
       
        <h1>Witaj, ${person.firstName} ${person.lastName}! <a href="mailto:${person.email}">Mail</a></h1>
        
        <h1>Cześć, <c:out value="${person.firstName}"/>!</h1>

<%-- 
Zadanie 2

Wersja pierwsza - wyrażenie ${imie} i druga wersja z c:out nie ma różnicy

Tekst ze znacznikami:

<span style='color: pink'>Piotr</span> - w pierwszym przypadku ${person.firstName} imie zmienia kolor
na rozowym, a w drugim przypadku <c:out value="${person.firstName}"/> nie dzieje się nic.

<script>alert('Jestem zlym hackerem i zaraz cie zjem!');</script> - tak samo jak wyzej w pierwszym 
przypadku ${person.firstName} wyswietla komunikat o hackerze, a w drugim przypadku wyswietla sie polecenie, ktore wpisalismy do forma.

--%>
        
        <c:forEach items="${dniTygodnia}" var="dzien">
            <p>
                ${dzien}
            </p>
        </c:forEach>
    </body>
</html>
