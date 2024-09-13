projectpath = "/var/lib/jenkins/workspace/HouseLocation"
pipeline {
    agent any
    stages {
        stage('Git checkout') {
            steps{
                git branch: 'main', changelog: false, credentialsId: 'jenkins-gitlab-user', poll: false, url: 'http://10.32.4.100:8888/dz/houselocation.git'
                echo "Git check successfully" 
            }
        }
        stage('Install prebuild') {
            steps {

                sh 'chmod +x Installscript.sh'

                sh '/var/lib/jenkins/workspace/HouseLocation/Installscript.sh' 
                 
            }
        }
         stage('Build') {
            steps {
                                    
                    sh " sudo npm install --force" || true
                   // sh "npm audit fix --force" || true 
                    echo "Ready to serve"
                    
            }
        }
        // stage('Test') {
        //     steps {
        //         echo 'Testing..'
        //     }
        // }
        // stage('Deploy') {
        //     steps {
        //         echo 'Deploying....'
        //     }
        // }
    }
}