<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste des Réservations</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 40px;
        }
        .card {
            background: white;
            border-radius: 16px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.2);
            padding: 40px;
            width: 1200px;
            position: relative;
        }
        .home-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            background: #6c757d;
            color: white;
            text-decoration: none;
            padding: 6px 12px;
            border-radius: 6px;
            font-size: 0.8em;
            transition: background 0.2s;
        }
        .home-btn:hover {
            background: #5a6268;
        }
        h2 {
            text-align: center;
            color: #333;
            font-size: 1.8em;
            margin-bottom: 30px;
        }
        .badge {
            background: #4CAF50;
            color: white;
            padding: 5px 10px;
            border-radius: 20px;
            font-size: 0.8em;
            display: inline-block;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 0.85em;
        }
        th {
            text-align: left;
            padding: 12px 8px;
            background: #f8f9fa;
            border-bottom: 2px solid #dee2e6;
            color: #495057;
            font-weight: 600;
        }
        td {
            padding: 12px 8px;
            border-bottom: 1px solid #e9ecef;
            color: #333;
        }
        tr:hover {
            background: #f8f9fa;
        }
        .empty-msg {
            text-align: center;
            padding: 40px;
            color: #999;
            font-size: 1.1em;
        }
        .btn-group {
            display: flex;
            gap: 15px;
            justify-content: center;
            margin-top: 30px;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 0.9em;
            transition: background 0.2s;
        }
        .btn-add { background: #4CAF50; }
        .btn-add:hover { background: #45a049; }
        .btn-home { background: #6c757d; }
        .btn-home:hover { background: #5a6268; }
        .footer {
            text-align: center;
            font-size: 0.7em;
            color: #999;
            margin-top: 30px;
        }
        .type-badge {
            display: inline-block;
            padding: 4px 8px;
            border-radius: 12px;
            font-size: 0.75em;
            font-weight: bold;
        }
        .type-single { background: #E3F2FD; color: #1976D2; }
        .type-double { background: #E8F5E9; color: #388E3C; }
        .type-suite { background: #FFF3E0; color: #F57C00; }
    </style>
</head>
<body>
    <div class="card">
        <a href="index.jsp" class="home-btn">🏠 Accueil</a>
        <h2>📋 Liste des Réservations</h2>
        <div style="text-align: center;">
            <span class="badge">Total: 
                <% 
                    List<Map<String, String>> reservations = (List<Map<String, String>>) request.getAttribute("reservations");
                    if (reservations != null) {
                        out.print(reservations.size());
                    } else {
                        out.print("0");
                    }
                %>
            </span>
        </div>
        
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Téléphone</th>
                    <th>E-mail</th>
                    <th>Type</th>
                    <th>Prix</th>
                    <th>Vue</th>
                </tr>
            </thead>
            <tbody>
                <%
                    if (reservations != null && !reservations.isEmpty()) {
                        int i = 1;
                        for (Map<String, String> reservation : reservations) {
                            String type = reservation.get("type");
                            String typeClass = "";
                            if ("Single".equals(type)) typeClass = "type-single";
                            else if ("Double".equals(type)) typeClass = "type-double";
                            else if ("Suite".equals(type)) typeClass = "type-suite";
                %>
                <tr>
                    <td><%= i++ %></td>
                    <td><%= reservation.get("nom") %></td>
                    <td><%= reservation.get("prenom") %></td>
                    <td><%= reservation.get("telephone") %></td>
                    <td><%= reservation.get("email") %></td>
                    <td><span class="type-badge <%= typeClass %>"><%= type %></span></td>
                    <td><%= reservation.get("prix") %> DH</td>
                    <td><%= reservation.get("vue") %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="8" class="empty-msg">📭 Aucune réservation enregistrée pour le moment</td>
                </tr>
                <% } %>
            </tbody>
        </table>
        
        <div class="btn-group">
            <a href="Reservation.jsp" class="btn btn-add">➕ Ajouter une réservation</a>
            <a href="index.jsp" class="btn btn-home">🏠 Accueil</a>
        </div>
        
        <div class="footer">Application de gestion des réservations © 2026 - Zaynab AITADDI</div>
    </div>
</body>
</html>