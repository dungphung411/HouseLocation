
pipeline {
    agent any
    stages {
        stage('Git checkout') {
            steps {
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/dungphung411/HouseLocation.git'
                echo "Git check successfully" 
            }
        }
        stage('Install prebuild') {
            steps {
                sh 'sudo su'
                sh 'chmod +x Installscript.sh'
                sh '/var/lib/jenkins/workspace/HouseLocation/Installscript.sh' 
            }
        }
        stage('Build') {
            steps {
                echo 'ready to serve'
                sh 'npm install --force'
                
            }
        }
         stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                sh 'chmod +x runscript.sh '
                echo 'Deploying....'
                sh './runscript.sh'

                
            }
        }

    }
}