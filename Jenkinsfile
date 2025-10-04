pipeline {
    agent any

    environment {
        VENV = ".venv"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Setup Python Environment') {
            steps {
                powershell '''
                    $ErrorActionPreference = "Stop"

                    # Chemin de ton Python 3.11 installé
                    $pyCmd = "C:\\Users\\Oumaima Toufali\\AppData\\Local\\Programs\\Python\\Python311\\python.exe"

                    # Création du venv si inexistant
                    if (-not (Test-Path $env:VENV)) {
                        & $pyCmd -m venv $env:VENV
                    }

                    $venvPy = Join-Path $env:VENV 'Scripts\\python.exe'

                    # Mise à jour de pip et installation des dépendances
                    & $venvPy -m pip install --upgrade pip setuptools wheel
                    if (Test-Path "requirements.txt") {
                        & $venvPy -m pip install --no-cache-dir -r requirements.txt
                    }

                    # Installer python-dotenv si tu charges un .env localement
                    & $venvPy -m pip install python-dotenv
                '''
            }
        }

        stage('Run Tests') {
            steps {
                withCredentials([string(credentialsId: 'GPT_API_TOKEN', variable: 'GPT_API_KEY')]) {
                    powershell '''
                        $ErrorActionPreference = "Stop"
                        $venvPy = Join-Path $env:VENV 'Scripts\\python.exe'

                        # Mapper GPT_API_KEY vers GITHUB_TOKEN attendu par ton code
                        [System.Environment]::SetEnvironmentVariable("GPT_API_KEY", "$env:GPT_API_KEY", "Process")


                        # Lancer les tests
                        & $venvPy -m pytest --maxfail=1 --disable-warnings -q
                    '''
                }
            }
        }
    }

    post {
        success {
            echo '✅ Build réussi et tests OK'
        }
        failure {
            echo '❌ Build échoué'
        }
    }
}
