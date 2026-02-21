\# 📊 Plateforme de Monitoring d'Entreprise



Ce projet permet de déployer automatiquement une stack de monitoring complète (Prometheus, Grafana, MySQL) en utilisant \*\*Ansible\*\* et \*\*Docker\*\*.



\## 🏗️ Architecture

\- \*\*Ansible\*\* : Automatisation du déploiement et configuration système.

\- \*\*Docker Compose\*\* : Orchestration des conteneurs.

\- \*\*Prometheus\*\* : Collecte des métriques.

\- \*\*Grafana\*\* : Visualisation des données.

\- \*\*MySQL\*\* : Base de données pour le stockage des informations (Service Desk).



\## 🚀 Installation rapide



1\. \*\*Prérequis\*\* :

&nbsp;  - Docker \& Docker Compose installés.

&nbsp;  - Ansible installé.



2\. \*\*Configuration\*\* :

&nbsp;  - Copiez le fichier `.env.example` en `.env`.

&nbsp;  - Remplissez vos mots de passe dans le fichier `.env`.



3\. \*\*Lancement\*\* :

&nbsp;  ```bash

&nbsp;  sudo ansible-playbook playbook.yml





