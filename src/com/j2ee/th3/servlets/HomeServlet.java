package com.j2ee.th3.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

import com.j2ee.th3.data.Bank;
import com.j2ee.th3.ws.BankWs;

/**
 * Created by Stevie on 05/22/2017.
 */
@WebServlet(urlPatterns = { "/home"})
public class HomeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/index.jsp");

        String lang = request.getParameter("lang");
        if (lang == null || lang.equals("")){
            lang = "en";
        }

        Bank bank = BankWs.Data.get(lang);
        bank.setDateByNumber(new Date());

        request.setAttribute("lang", lang);
        request.setAttribute("bank", bank);

        dispatcher.forward(request, response);
    }


}
