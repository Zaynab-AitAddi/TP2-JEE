<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste des Clients</title>
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
            width: 1000px;
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
            background: #2196F3;
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
            font-size: 0.9em;
        }
        th {
            text-align: left;
            padding: 12px 15px;
            background: #f8f9fa;
            border-bottom: 2px solid #dee2e6;
            color: #495057;
            font-weight: 600;
        }
        td {
            padding: 12px 15px;
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
        .btn-add { background: #2196F3; }
        .btn-add:hover { background: #1976D2; }
        .btn-home { background: #6c757d; }
        .btn-home:hover { background: #5a6268; }
        .footer {
            text-align: center;
            font-size: 0.7em;
            color: #999;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <div class="card">
        <a href="index.jsp" class="home-btn">🏠 Accueil</a>
        <h2>👥 Liste des Clients</h2>
        <div style="text-align: center;">
            <span class="badge">Total: 
                <% 
                    List<Map<String, String>> clients = (List<Map<String, String>>) request.getAttribute("clients");
                    if (clients != null) {
                        out.print(clients.size());
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
                </tr>
            </thead>
            <tbody>
                <%
                    if (clients != null && !clients.isEmpty()) {
                        int i = 1;
                        for (Map<String, String> client : clients) {
                %>
                <tr>
                    <td><%= i++ %></td>
                    <td><%= client.get("nom") %></td>
                    <td><%= client.get("prenom") %></td>
                    <td><%= client.get("telephone") %></td>
                    <td><%= client.get("email") %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="5" class="empty-msg">📭 Aucun client enregistré pour le moment</td>
                </tr>
                <% } %>
            </tbody>
        </table>
        
        <div class="btn-group">
            <a href="Inscription.jsp" class="btn btn-add">➕ Ajouter un client</a>
            <a href="index.jsp" class="btn btn-home">🏠 Accueil</a>
        </div>
        
        <div class="footer">Application de gestion des réservations © 2026 - Zaynab AITADDI</div>
    </div>
</body>
</html>