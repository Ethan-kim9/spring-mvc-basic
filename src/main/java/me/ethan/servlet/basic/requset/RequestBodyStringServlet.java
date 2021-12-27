package me.ethan.servlet.basic.requset;

import org.springframework.util.StreamUtils;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

@WebServlet(name = "requestBodyStringServlet" , urlPatterns = "/request-body-string")
public class RequestBodyStringServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletInputStream inputStream = request.getInputStream(); // request의 바이트코드를 받아옴
        String messageBody = StreamUtils.copyToString(inputStream, StandardCharsets.UTF_8);//바이트와 문자 간의 변화가 있을 땐 문자 정보가 꼭 필요하다.

        System.out.println("messageBody = " + messageBody);
        response.getWriter().write("OK!");
    }
}
