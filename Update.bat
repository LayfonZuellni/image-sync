@echo off
echo [INFO] Mise à jour Git en cours...

cd /d "D:\Star Academy World\MCStatsCompiler-main\excel2img\Image-sync\image-sync"

:: Forcer la mise à jour des images, sans erreur si elles n'existent pas
git rm --cached *.png *.jpg *.jpeg *.gif >nul 2>&1 || echo [INFO] Aucun fichier image à supprimer du cache.

:: Ajouter les images et tous les autres fichiers modifiés
git add *.png *.jpg *.jpeg *.gif >nul 2>&1
git add .

:: Vérifier s'il y a des changements avant de committer
git diff --cached --quiet || (
    echo [INFO] Changements détectés, commit en cours...
    git commit -m "Auto-update %date% %time%"
    git push origin main
) || echo [INFO] Aucun changement à pousser.

echo [INFO] Mise à jour terminée !
exit /b 0
