# Ubuntu Setup Script

## Description
Ce script shell automatise la configuration d'un environnement de développement sur Ubuntu. Il inclut l'installation d'outils de base comme `curl`, `git`, `gcc`, ainsi que d'applications populaires comme Google Chrome, VSCode et Discord. Il propose également la personnalisation de l'environnement avec des thèmes et des extensions GNOME.

## Fonctionnalités
- Installation des outils essentiels : `curl`, `wget`, `git`, `gcc`, `clang`, `zsh`, `valgrind`, etc.
- Configuration de `grub-customizer` et installation de thèmes pour le bootloader.
- Installation d'applications : Google Chrome, VSCode, Discord.
- Installation des extensions GNOME et des thèmes personnalisés.
- Installation de `Oh-My-Zsh` pour améliorer l'expérience du terminal.

## Prérequis
- Ubuntu 18.04 ou supérieur.
- Droits administrateur (sudo).

## Installation
1. Clonez le dépôt sur votre machine :
    ```bash
    git clone https://github.com/Hooks42/Ubuntu-theme-install.git
    cd votre-repo
    ```

2. Rendez le script exécutable :
    ```bash
    chmod +x setup.sh
    ```

3. Exécutez le script :
    ```bash
    ./setup.sh
    ```

## Détails du script
Le script exécute les étapes suivantes :
1. **Mise à jour du système** : Télécharge et installe les dernières versions des outils de développement.
2. **Personnalisation du bootloader** : Installe `grub-customizer` et configure des thèmes personnalisés.
3. **Installation d'applications** : Installe Google Chrome, VSCode, et Discord.
4. **Personnalisation de l'environnement GNOME** : Configure des thèmes, des extensions et installe `plank` pour un dock personnalisé.
5. **Terminal amélioré** : Installe et configure `Oh-My-Zsh` pour une meilleure expérience en ligne de commande.

## Personnalisation
Le script est entièrement modifiable. Vous pouvez ajouter, supprimer ou modifier des lignes pour adapter l'installation à vos besoins spécifiques.

## Avertissement
Utilisez ce script avec précaution, en particulier sur des machines de production. Il est recommandé de tester sur une machine virtuelle ou un environnement de test avant utilisation.


