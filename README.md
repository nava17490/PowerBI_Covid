# PowerBI_Covid
 This project uses data from other sources:
 - Spain data from: https://github.com/datadista/datasets/tree/master/COVID%2019
 - Rest of countries data from PDFs from https://www.mscbs.gob.es/profesionales/saludPublica/ccayes/alertasActual/nCov-China/situacionActual.htm stored in the Paises.xlsx file
to provide a dashboard to analyse evolution of COVID 19 in several countries focussing on Spain 

The content of the repository is the following one:
* Script folder contains 2 powershell scripts
    - Copy_files.ps1 gets the data from the https://github.com/datadista/datasets/tree/master/COVID%2019 repository and pushes them in this one automatically
    - Download_changes.ps1 do the pull of the changes of this repository over the local repository
* Sources folder contains the files with the data for the PowerBI report
* Report_COVID.pbix contains the PowerBI file