<%@ page import="me.ethan.servlet.domain.member.Member" %>
<%@ page import="me.ethan.servlet.domain.member.MemberRepository" %>
<%--
  Created by IntelliJ IDEA.
  User: ethankim
  Date: 2021/12/29
  Time: 5:38 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    /**
     *jsp 는 자동으로 서블릿으로 변환되기에, request, response는 사용 가능
     */


    MemberRepository memberRepository = MemberRepository.getInstance();
    System.out.println("MemberSaveServlet.service");

    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username,age);

    memberRepository.save(member);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
성공
<ul>
    <li>id = <%=member.getId()%></li>
    <li>username = <%=member.getUsername()%></li>
    <li>age = <%=member.getAge()%></li>

</ul>
<a href="/index.html">메인</a>
</body>
</html>
