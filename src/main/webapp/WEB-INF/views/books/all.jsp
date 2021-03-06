<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Book List</title>
</head>
<body>
<table border="1">
    <thead>
    <th>isbn</th>
    <th>title</th>
    <th>author</th>
    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td><c:out value="${book.isbn}"/></td>
            <td><c:out value="${book.title}"/></td>
            <td><c:out value="${book.author}"/></td>
            <td><a href="http://localhost:8080/BookAPI/books/delete/${book.id}">Delete Book</a></td>
            <td><a href="http://localhost:8080/BookAPI/books/edit/${book.id}">Edit Book</a></td>
            <td><a href="http://localhost:8080/BookAPI/books/get/${book.id}">Show Book</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>