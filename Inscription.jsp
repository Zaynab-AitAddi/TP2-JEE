<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ajouter un Client</title>
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
            width: 450px;
            padding: 30px 40px 25px;
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
        .card-header {
            background: #2196F3;
            color: white;
            text-align: center;
            padding: 12px;
            font-size: 1em;
            margin: -30px -40px 20px;
            border-radius: 16px 16px 0 0;
        }
        h2 {
            text-align: center;
            color: #555;
            font-size: 1.3em;
            margin-bottom: 20px;
        }
        .error-msg {
            background: #fff3cd;
            color: #856404;
            text-align: center;
            padding: 8px;
            border-radius: 8px;
            margin-bottom: 15px;
            font-size: 0.85em;
        }
        label {
            display: block;
            font-size: 0.82em;
            color: #555;
            margin-bottom: 5px;
            margin-top: 12px;
            font-weight: 500;
        }
        input[type="text"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 0.9em;
            transition: border-color 0.2s;
        }
        input:focus { 
            outline: none; 
            border-color: #2196F3;
            box-shadow: 0 0 0 2px rgba(33,150,243,0.1);
        }
        .btn-submit {
            width: 100%;
            padding: 12px;
            background: #2196F3;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1em;
            font-weight: bold;
            cursor: pointer;
            margin-top: 25px;
            transition: background 0.2s;
        }
        .btn-submit:hover { background: #1976D2; }
        .btn-retour {
            display: inline-block;
            width: 100%;
            margin-top: 10px;
            padding: 10px;
            background: #6c757d;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 0.9em;
            text-align: center;
            transition: background 0.2s;
        }
        .btn-retour:hover { background: #5a6268; }
        .footer {
            text-align: center;
            font-size: 0.7em;
            color: #999;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="card">
        <a href="index.jsp" class="home-btn">🏠 Accueil</a>
        <div class="card-header">Espace Client - Zaynab AITADDI</div>

        <% if ("error".equals(request.getParameter("status"))) { %>
            <div class="error-msg">❌ Ooops, erreur !!! Vous devez remplir tous les champs</div>
        <% } %>

        <h2>➕ Ajouter un client</h2>

        <form action="addClt" method="post">
            <label>Nom complet</label>
            <input type="text" name="nom" placeholder="Entrez votre nom" required />

            <label>Prénom</label>
            <input type="text" name="prenom" placeholder="Entrez votre prénom" required />

            <label>Téléphone</label>
            <input type="tel" name="telephone" placeholder="06XXXXXXX" required />

            <label>E-mail</label>
            <input type="email" name="email" placeholder="exemple@email.com" required />

            <button type="submit" class="btn-submit">✅ Ajouter Client</button>
        </form>
        
        <a href="index.jsp" class="btn-retour">← Retour à l'accueil</a>

        <div class="footer">Application de gestion des réservations © 2026</div>
    </div>
</body>
</html>