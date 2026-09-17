# Ma Cave à Vin V4.1
Version mobile-first : ajout fonctionnel, gros boutons, photo d'étiquette, recherche, stock, garde, export/import JSON, PWA et connexion/synchronisation Supabase.

## GitHub Pages
Mets tous les fichiers à la racine du dépôt puis active Pages sur `main` / `/ (root)`.

## Supabase
1. Crée un projet Supabase.
2. Exécute `supabase-schema.sql` dans SQL Editor.
3. Copie `config.example.js` vers `config.js` et renseigne URL + clé anon/publishable.
4. Ne mets jamais la clé `service_role` dans le site public.
5. Recharge l'app puis crée ton compte via Connexion.

## Important
Sans Supabase, l'application fonctionne en local dans le navigateur. Les données locales ne sont pas automatiquement partagées entre appareils. Les photos sont encore stockées localement et ne sont pas envoyées dans Supabase Storage.
