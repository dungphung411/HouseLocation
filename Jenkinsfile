
pipeline {
    agent any
    stages {
        stage('Git checkout') {
            steps{
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/dungphung411/HouseLocation.git'
                echo "Git check successfully" 
            }
        }
        stage('Install prebuild') {
            steps {
                powershell './Installscript.ps1' 
                 
            }
        }
         stage('Build') {
            steps {
                    bat " npm install --force" 
                    echo "Ready to serve"
                    
            }
        }
         stage('Test') {
             steps {
                 echo 'Testing..'
             }
         }
         stage('Deploy') {
             steps {
                 timeout(time: 3, unit: 'MINUTES') {
                 echo 'Deploying....'
                 try {
                    ./runscript.bat -ErrorAction Stop
                     Write-Output "Script executed successfully."
                } catch {
                    Write-Output "Script execution failed. Continuing with the next steps."
    
                    }    

                 }
             }
         }
        stage('Publish') {
            steps {
                sh 'npm build'
            }
        }
    }
}
