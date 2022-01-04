<%--
  Created by IntelliJ IDEA.
  User: ethankim
  Date: 2022/01/04
  Time: 8:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<!-- 상대경로 사용, [현재 URL 이 속한 계층 경로 + /save] -->
<form action="save" method="post">
  username : <input name="username" type="text">
  age : <input name="age" type="text">
  <button type="submit">전송</button>
</form>
</body>
</html>
