$env:POSH_THEME = "https://raw.githubusercontent.com/sinneDvdb/oh-my-posh-theme/main/.custom-theme.omp.json"
# $env:POSH_THEME = "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/sim-web.omp.json"

function Get-KubectlPods {
    kubectl get pods
}

function Get-KubectlLogs {
    param (
        [string]$ContainerName
    )
    kubectl logs -f $ContainerName
}

function GoToRepos {
    Set-Location "C:\DigitalOperations\Repositories"
}

New-Alias grep Select-String
Set-Alias pods Get-KubectlPods
Set-Alias logs Get-KubectlLogs
Set-Alias repo GoToRepos
Set-Alias c clear

$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

# Import-Module CompletionPredictor
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView


oh-my-posh init pwsh | Invoke-Expression
