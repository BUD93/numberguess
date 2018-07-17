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
                /*echo 'hi'
                powershell './deploy.ps1'
                echo 'deployed'*/
                bat 'cd "C:/Program Files (x86)/Jenkins/workspace/numberguess/target"'

                bat 'java -jar "C:\Program Files (x86)\Jenkins\jboss-cli-client.jar" -c --controller=remote+http://23.96.24.10:9990 --user=burhan --password=abcd@1234 --command="deploy jboss-numberguess.war"'
            }
            
        }
    }
}
