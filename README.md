# Ma Cave à Vin V4

Application mobile/PWA : ajout rapide, photo d'étiquette, stock, recherche, filtres, à boire, sauvegarde JSON et synchronisation Supabase.

## GitHub Pages
1. Crée un dépôt public GitHub.
2. Envoie tous les fichiers du dossier.
3. Settings > Pages > Deploy from branch > main > /(root).
4. Ouvre l'adresse GitHub Pages sur le smartphone et ajoute-la à l'écran d'accueil.

## Synchronisation PC + smartphone
1. Crée un projet Supabase.
2. Ouvre SQL Editor et exécute `supabase-schema.sql`.
3. Dans Supabase > Authentication, crée ton utilisateur email/mot de passe.
4. Dans `config.js`, renseigne l'URL du projet et la clé anon/publishable.
5. Recharge l'application. Le bouton ↻ permet de se connecter et de synchroniser.

Ne mets jamais une clé `service_role` dans `config.js`.

## Important
Les photos sont stockées localement sous forme de données dans cette V4 de départ. La synchronisation cloud des fiches fonctionne, mais pour synchroniser les photos entre appareils il faut ajouter un bucket Supabase Storage. Le fichier est volontairement séparé pour pouvoir l'activer ensuite proprement.

Le mode local reste disponible sans Supabase. Fais régulièrement `Plus > Sauvegarder`.
