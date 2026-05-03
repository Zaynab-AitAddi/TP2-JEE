package servlets;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet pour afficher la liste des clients
 * 
 * @author Zaynab AITADDI
 *         TP2 - J2EE
 */
public class ListeClients extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        List<Map<String, String>> clients = (List<Map<String, String>>) session.getAttribute("clients");

        request.setAttribute("clients", clients);
        request.getRequestDispatcher("listeClients.jsp").forward(request, response);
    }
}