package servlets;

import data.Bank;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Stevie on 05/22/2017.
 */
@WebServlet(urlPatterns = { "/home"})
public class HomeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private static HashMap<String, Bank> Data = new HashMap<String, Bank>();
    static {
        Data.put("vi", new Bank("Ngân hàng Sài Gòn Thương Tín", "", "dd-MM-yyyy"));
        Data.put("ko", new Bank("사이공 투옹 틴 상업 은행", "", "dd MMMM yyyy"));
        Data.put("en", new Bank("Sai Gon Commercial Bank", "", "dd MMMM yyyy"));

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/index.jsp");

        String lang = request.getParameter("lang");
        if (lang == null || lang.equals("")){
            lang = "en";
        }

        Bank bank = Data.get(lang);
        bank.setDate(new Date());

        request.setAttribute("lang", lang);
        request.setAttribute("bank", bank);

        dispatcher.forward(request, response);
    }


}
