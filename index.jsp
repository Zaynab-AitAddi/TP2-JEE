<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Application de Gestion</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            text-align: center;
            padding: 60px 40px;
            background: white;
            border-radius: 16px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.2);
            width: 550px;
        }
        h1 {
            font-size: 2em;
            color: #333;
            margin-bottom: 15px;
        }
        .subtitle {
            color: #666;
            margin-bottom: 40px;
            font-size: 0.9em;
        }
        .author {
            color: #764ba2;
            font-weight: bold;
        }
        .btn {
            display: block;
            width: 280px;
            margin: 15px auto;
            padding: 15px;
            font-size: 1.1em;
            text-decoration: none;
            border-radius: 8px;
            color: white;
            transition: transform 0.2s, opacity 0.2s;
        }
        .btn:hover { 
            opacity: 0.9;
            transform: translateY(-2px);
        }
        .btn-client { background: #2196F3; }
        .btn-reservation { background: #4CAF50; }
        .btn-view { background: #FF9800; }
        .btn-view-client { background: #FF9800; }
        .btn-view-reservation { background: #9C27B0; }
        hr {
            margin: 20px 0;
            border: none;
            border-top: 1px solid #eee;
        }
        .footer {
            font-size: 0.7em;
            color: #999;
            margin-top: 20px;
        }
        .btn-group {
            display: flex;
            gap: 15px;
            justify-content: center;
            margin-top: 10px;
        }
        .btn-small {
            flex: 1;
            padding: 12px;
            font-size: 0.95em;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🏨 Application de Gestion</h1>
        <p class="subtitle">Développée par <span class="author">Zaynab AITADDI</span> - TP2 J2EE</p>
        
        <a href="Inscription.jsp" class="btn btn-client">➕ Ajouter un Client</a>
        <a href="Reservation.jsp" class="btn btn-reservation">📅 Ajouter une Réservation</a>
        
        <hr>
        
        <div class="btn-group">
            <a href="listClients" class="btn btn-view-client btn-small">👥 Voir tous les Clients</a>
            <a href="listReservations" class="btn btn-view-reservation btn-small">📋 Voir toutes les Réservations</a>
        </div>
        
        <hr>
        <div class="footer">© 2026 - Tous droits réservés</div>
    </div>
</body>
</html>