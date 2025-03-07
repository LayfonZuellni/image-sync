@echo off
echo [INFO] Mise à jour Git en cours...

cd /d "D:\Star Academy World\MCStatsCompiler-main\excel2img\Image-sync\image-sync"

:: Forcer la mise à jour des images en les supprimant et les réajoutant
git rm --cached *.png *.jpg *.jpeg *.gif >nul 2>&1
git add --force *.png *.jpg *.jpeg *.gif

:: Ajouter tous les fichiers modifiés
git add .

:: Vérifier s'il y a des changements avant de committer
git diff --cached --quiet || (
    echo [INFO] Changements détectés, commit en cours...
    git commit -m "Auto-update %date% %time%"
    git push --force origin main
) || echo [INFO] Aucun changement à pousser.

echo [INFO] Mise à jour terminée !
exit /b 0
