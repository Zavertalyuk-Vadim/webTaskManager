<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="css/mystyle.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<input type="submit" value="Add Task" onclick="window.location='jsp/add_task.jsp'"><br>
<table>
    <c:forEach items="${taskList}" var="item">
        <tr>
            <td>
                    ${item.title}
            </td>
            <td>
                <a href="/messages?task=${item.taskId}">
                    <i class="material-icons" style="font-size:36px">chrome_reader_mode</i>
                    ${item.messagesValues}</a>
            </td>
            <td>
                <a href="/delete?task=${item.taskId}">
                    <i class="material-icons" style="font-size:36px">visibility_off</i>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
