@echo off
:: Définit l'intervalle en secondes (modifie la valeur ici)
set INTERVAL=60

:: Chemin du dossier Git (remplace si nécessaire)
cd /d "D:\Star Academy World\MCStatsCompiler-main\excel2img\Image-sync\image-sync"

:: Boucle infinie
:loop
echo [INFO] Mise à jour Git en cours...

:: Ajouter tous les fichiers
git add .

:: Faire un commit (avec un message horodaté)
git commit -m "Auto-update %date% %time%"

:: Pousser les modifications sur GitHub
git push origin main

echo [INFO] Mise à jour terminée. Attente de %INTERVAL% secondes...
timeout /t %INTERVAL% /nobreak >nul

:: Recommencer la boucle
goto loop
