@echo off
echo [INFO] Mise à jour Git en cours...

cd /d "D:\Star Academy World\MCStatsCompiler-main\excel2img\Image-sync\image-sync"

:: Forcer la mise à jour des images
git rm --cached *.png *.jpg *.jpeg *.gif >nul 2>&1
git add *.png *.jpg *.jpeg *.gif

:: Ajouter tous les autres fichiers modifiés
git add .

:: Faire un commit avec l'horodatage
git commit -m "Auto-update %date% %time%"

:: Pousser les changements vers GitHub
git push origin main

echo [INFO] Mise à jour terminée !
exit
