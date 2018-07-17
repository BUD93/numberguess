pipeline {
    agent any
    stages 
    {
        stage('Build') 
        {
            steps 
            {
                //bat 'mvn -B -DskipTests clean package'
                bat 'mvn compile war:war'
            }
        }
        /*stage('Test') {
            steps {
                bat 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }*/
        stage('Deliver') 
        { 
            steps 
            { 
                echo 'hi'
                powershell './deploy.ps1'
                echo 'deployed'
            }
            
        }
    }
}
