# Script pentru publicare rapidă pe GitHub
# Rulează cu: .\deploy.ps1 "mesajul tau de commit"

param(
    [string]$message = "Update website"
)

Write-Host "🔄 Adaug fisierele modificate..." -ForegroundColor Cyan
git add .

Write-Host "📝 Creez commit: $message" -ForegroundColor Yellow
git commit -m $message

Write-Host "🚀 Public pe GitHub..." -ForegroundColor Green
git push

Write-Host "✅ Gata! Site-ul se va actualiza in 1-2 minute." -ForegroundColor Green
Write-Host "🌐 https://lilianzghibarta-collab.github.io/lzweb/" -ForegroundColor Blue
