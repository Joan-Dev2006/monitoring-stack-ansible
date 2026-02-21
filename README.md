# 📊 Enterprise Monitoring Stack & Automation
> Une solution clé en main pour le déploiement automatisé d'une infrastructure de monitoring.

[![Ansible](https://img.shields.io/badge/Ansible-E00?style=for-the-badge&logo=ansible&logoColor=white)](https://www.ansible.com/)
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=for-the-badge&logo=prometheus&logoColor=white)](https://prometheus.io/)
[![Grafana](https://img.shields.io/badge/Grafana-F46800?style=for-the-badge&logo=grafana&logoColor=white)](https://grafana.com/)

---

## 📖 Présentation du Projet
Ce projet automatise le déploiement d'une stack de supervision complète. Il utilise **Ansible** pour la gestion de la configuration système et **Docker Compose** pour l'orchestration des micro-services. L'objectif est de fournir un environnement de monitoring opérationnel en une seule commande.



## 🏗️ Architecture des Services
| Service | Rôle | Port |
| :--- | :--- | :--- |
| **Prometheus** | Moteur de collecte de métriques (Time Series) | `9090` |
| **Grafana** | Visualisation de données et tableaux de bord | `3000` |
| **MySQL** | Base de données relationnelle (Service Desk) | `3306` |
| **Ansible** | Orchestrateur du déploiement (IaC) | N/A |

## 🛠️ Fonctionnalités Clés
- **Infrastructure as Code (IaC)** : Configuration reproductible via Playbooks Ansible.
- **Persistance des données** : Utilisation de volumes Docker pour conserver les métriques et les bases de données.
- **Sécurisation** : Gestion des secrets via variables d'environnement (`.env`).
- **Initialisation DB** : Injection automatique du schéma SQL au premier lancement.

---


## 🚀 Guide de Démarrage

### 1. Prérequis
- Système Linux (Ubuntu/Debian recommandé) ou WSL2.
- Docker Engine >= 20.10 & Docker Compose V2.
- Ansible >= 2.10.
  > Commande de deploiement : sudo ansible-playbook playbook.yml  

### 2. Configuration
Préparez votre environnement en créant le fichier de secrets :
```bash
cp .env.example .env
# Éditez ensuite le fichier .env avec vos identifiants
exit

### Perspectives et Évolutions
En vue de pouvoir ameliorer la scalabilite et de permettre la haute disponibilite des services en temps reel , l'utilisation des Kubernetes sera d'une grande efficacite pour garantir le deploiement des services.
