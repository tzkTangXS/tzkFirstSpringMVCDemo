package tzk.controller;


import org.springframework.web.HttpRequestHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HttpController implements HttpRequestHandler {
    @Override
    public void handleRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        httpServletRequest.setAttribute("hello","大海无疆");
        httpServletRequest.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(httpServletRequest,httpServletResponse);
    }
}
