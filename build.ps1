if (Test-Path .git) {
    Remove-Item -Recurse -Force .git
}

git init
git remote add origin https://github.com/GentlemanRabbit/images
git add *
git commit -m "Updated"
git push -f -u origin master

Remove-Item -Recurse -Force .git
exit 0