pipeline{
    agent any
    
    environment{
        PATH = "/opt/maven/apache-maven-3.8.4/bin:$PATH"
    }
    stages{
        stage("Git Checkout"){
            steps{
                git credentialsId: 'javahome2', url: 'https://github.com/PAVANMAHANKALI/sample-java.git'
            }
        }
        stage("Maven Build"){
            steps{
                sh "mvn clean package"
                sh "mv target/*.war target/myweb.war"
            }
        }
        stage("deploy-dev"){
            steps{
                sshagent(['tomcat-new']) {
                sh """
                    scp -o StrictHostKeyChecking=no target/myweb.war  ec2-user@172.31.5.159:/home/ec2-user/apache-tomcat-9.0.55/webapps/
                    
                    ssh ec2-user@172.31.5.159 /home/ec2-user/apache-tomcat-9.0.55/bin/shutdown.sh
                    
                    ssh ec2-user@172.31.5.159 /home/ec2-user/apache-tomcat-9.0.55/bin/startup.sh
                
                """
            }
            
            }
        }
    }
}