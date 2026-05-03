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
 * Servlet pour la création d'un client
 * 
 * @author Zaynab AITADDI
 *         TP2 - J2EE
 */
public class CreerClient extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");

        // Validation des champs
        if (nom == null || nom.trim().isEmpty() ||
                prenom == null || prenom.trim().isEmpty() ||
                telephone == null || telephone.trim().isEmpty() ||
                email == null || email.trim().isEmpty()) {

            response.sendRedirect("Inscription.jsp?status=error");
            return;
        }

        // Store in session
        HttpSession session = request.getSession();
        List<Map<String, String>> clients = (List<Map<String, String>>) session.getAttribute("clients");
        if (clients == null) {
            clients = new ArrayList<>();
        }
        
        Map<String, String> client = new HashMap<>();
        client.put("nom", nom.trim());
        client.put("prenom", prenom.trim());
        client.put("telephone", telephone.trim());
        client.put("email", email.trim());
        clients.add(client);
        session.setAttribute("clients", clients);

        // Transmission des données
        request.setAttribute("nom", nom.trim());
        request.setAttribute("prenom", prenom.trim());
        request.setAttribute("telephone", telephone.trim());
        request.setAttribute("email", email.trim());

        request.getRequestDispatcher("infoClient.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("Inscription.jsp");
    }
}