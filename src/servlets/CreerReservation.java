package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet pour la création d'une réservation
 * 
 * @author Zaynab AITADDI
 *         TP2 - J2EE
 */
public class CreerReservation extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        String type = request.getParameter("type");
        String prix = request.getParameter("prix");
        String vue = request.getParameter("vue");

        // Validation
        if (nom == null || nom.trim().isEmpty() ||
                prenom == null || prenom.trim().isEmpty() ||
                telephone == null || telephone.trim().isEmpty() ||
                email == null || email.trim().isEmpty() ||
                type == null || type.trim().isEmpty() ||
                prix == null || prix.trim().isEmpty() ||
                vue == null || vue.trim().isEmpty()) {

            response.sendRedirect("Reservation.jsp?status=error");
            return;
        }

        // Store in session
        HttpSession session = request.getSession();
        List<Map<String, String>> reservations = (List<Map<String, String>>) session.getAttribute("reservations");
        if (reservations == null) {
            reservations = new ArrayList<>();
        }
        
        Map<String, String> reservation = new HashMap<>();
        reservation.put("nom", nom.trim());
        reservation.put("prenom", prenom.trim());
        reservation.put("telephone", telephone.trim());
        reservation.put("email", email.trim());
        reservation.put("type", type);
        reservation.put("prix", prix);
        reservation.put("vue", vue);
        reservations.add(reservation);
        session.setAttribute("reservations", reservations);

        // Transmission
        request.setAttribute("nom", nom.trim());
        request.setAttribute("prenom", prenom.trim());
        request.setAttribute("telephone", telephone.trim());
        request.setAttribute("email", email.trim());
        request.setAttribute("type", type);
        request.setAttribute("prix", prix);
        request.setAttribute("vue", vue);

        request.getRequestDispatcher("infoReservation.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("Reservation.jsp");
    }
}