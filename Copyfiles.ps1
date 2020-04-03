# Change directory to the git local repository of data from github
cd "C:\GitHub\datasets\COVID 19"

echo "Retrieving source data files from GitHub Datasets repository"
# git pull changes
git pull

# Copy files to Reporting repository
Copy-Item "C:\GitHub\datasets\COVID 19\ccaa_covid19_altas_long.csv" -Destination "C:\GitHub\PowerBI_Covid"
Copy-Item "C:\GitHub\datasets\COVID 19\ccaa_covid19_casos_long.csv" -Destination "C:\GitHub\PowerBI_Covid"
Copy-Item "C:\GitHub\datasets\COVID 19\ccaa_covid19_hospitalizados_long.csv" -Destination "C:\GitHub\PowerBI_Covid"
Copy-Item "C:\GitHub\datasets\COVID 19\ccaa_covid19_fallecidos_long.csv" -Destination "C:\GitHub\PowerBI_Covid"
Copy-Item "C:\GitHub\datasets\COVID 19\ccaa_covid19_uci_long.csv" -Destination "C:\GitHub\PowerBI_Covid"
echo "Files already copied."

# Change directory to Reporting repository
cd "C:\GitHub\PowerBI_Covid"

echo "Commiting source data files to GitHub Reporting repository"
# Commit and push changes
git add .
git commit --message "Automatic daily update of data"
git push





