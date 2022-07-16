pipeline{
    agent any
    tools{
        maven 'maven3.6.3'
    }
        stages{

            stage('Build Maven Project'){
                steps{
                  checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Venkata92557/devops-integration']]])
                  bat'mvn clean install'
                }
            }
            stage('Build Docker Image'){
                steps{
                    script{
                        bat'docker build -t venkata92557/devops-integration .'

                    }
                }
            }
            stage('Push Docker Image to Docker Hub'){
                steps{
                    script{
                      /* withCredentials([string(credentialsId: '18julyid', variable: '18july-var')]) {
                        bat 'docker login -u venkata92557 -p ${18july-var}'
}*/
                        bat 'docker push venkata92557/devops-integration'
                    }
                }
            }
        }
    }

