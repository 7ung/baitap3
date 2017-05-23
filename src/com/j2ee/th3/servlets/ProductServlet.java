package com.j2ee.th3.servlets;

import com.j2ee.th3.data.Bank;
import com.j2ee.th3.ws.BankWs;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

/**
 * Created by Stevie on 05/23/2017.
 */
@WebServlet(urlPatterns = { "/product"})
public class ProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = this.getServletContext()
                .getRequestDispatcher("/WEB-INF/views/product.jsp");

        dispatcher.forward(request, response);
    }
}
