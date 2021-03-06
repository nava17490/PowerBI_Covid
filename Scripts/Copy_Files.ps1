# Change directory to the git local repository of data from github
Set-Location 'C:\GitHub\datasets\COVID 19'

Write-Output "Retrieving source data files from GitHub Datasets repository"
# git pull changes
git pull

# Copy files to Reporting repository
Copy-Item "C:\GitHub\datasets\COVID 19\ccaa_covid19_altas_long.csv" -Destination "C:\GitHub\PowerBI_Covid\Sources"
Copy-Item "C:\GitHub\datasets\COVID 19\ccaa_covid19_casos_long.csv" -Destination "C:\GitHub\PowerBI_Covid\Sources"
Copy-Item "C:\GitHub\datasets\COVID 19\ccaa_covid19_hospitalizados_long.csv" -Destination "C:\GitHub\PowerBI_Covid\Sources"
Copy-Item "C:\GitHub\datasets\COVID 19\ccaa_covid19_fallecidos_long.csv" -Destination "C:\GitHub\PowerBI_Covid\Sources"
Copy-Item "C:\GitHub\datasets\COVID 19\ccaa_covid19_uci_long.csv" -Destination "C:\GitHub\PowerBI_Covid\Sources"
Copy-Item "C:\GitHub\datasets\COVID 19\ccaa_covid19_confirmados_test_long.csv" -Destination "C:\GitHub\PowerBI_Covid\Sources"
Copy-Item "C:\GitHub\datasets\COVID 19\ccaa_covid19_confirmados_pcr_long.csv" -Destination "C:\GitHub\PowerBI_Covid\Sources"


Write-Output "Files copied successfully."

Write-Output "Please refresh the report before committing"
Start-Sleep -s 60


# Change directory to Reporting repository
Set-Location 'C:\GitHub\PowerBI_Covid'

Write-Output "Commiting source data files to GitHub Reporting repository"
# Commit and push changes
git add .
git commit --message "Automatic daily update of data"
git push origin





