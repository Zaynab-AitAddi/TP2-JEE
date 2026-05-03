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
 * Servlet pour afficher la liste des réservations
 * 
 * @author Zaynab AITADDI
 *         TP2 - J2EE
 */
public class ListeReservations extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        List<Map<String, String>> reservations = (List<Map<String, String>>) session.getAttribute("reservations");

        request.setAttribute("reservations", reservations);
        request.getRequestDispatcher("listeReservations.jsp").forward(request, response);
    }
}