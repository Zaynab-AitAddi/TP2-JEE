<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Info Client</title>
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
        .card {
            background: white;
            border-radius: 16px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.2);
            padding: 40px;
            width: 700px;
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
        .success-msg {
            background: #d4edda;
            color: #155724;
            text-align: center;
            padding: 12px;
            border-radius: 8px;
            margin-bottom: 25px;
            font-size: 0.95em;
        }
        h2 {
            text-align: center;
            color: #333;
            font-size: 1.6em;
            font-weight: 500;
            margin-bottom: 25px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 0.95em;
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
        .btn-retour { background: #2196F3; }
        .btn-retour:hover { background: #1976D2; }
        .btn-home { background: #6c757d; }
        .btn-home:hover { background: #5a6268; }
        .btn-view { background: #FF9800; }
        .btn-view:hover { background: #F57C00; }
        .center { text-align: center; }
    </style>
</head>
<body>
    <div class="card">
        <a href="index.jsp" class="home-btn">🏠 Accueil</a>
        <div class="success-msg">✅ Client ajouté avec succès par Zaynab AITADDI</div>
        <h2>📋 Affichage des données du client :</h2>
        <table>
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Téléphone</th>
                    <th>E-mail</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${nom}</td>
                    <td>${prenom}</td>
                    <td>${telephone}</td>
                    <td>${email}</td>
                </tr>
            </tbody>
        </table>
        <div class="btn-group">
            <a href="Inscription.jsp" class="btn btn-retour">← Nouveau Client</a>
            <a href="listClients" class="btn btn-view">👥 Voir tous les clients</a>
            <a href="index.jsp" class="btn btn-home">🏠 Accueil</a>
        </div>
    </div>
</body>
</html>