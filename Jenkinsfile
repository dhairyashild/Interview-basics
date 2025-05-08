pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/your-org/your-repo.git', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                sh 'echo "Building the application..."'
                sh 'mvn clean install -DskipTests'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Running tests..."'
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying the application..."'
            }
        }
    }
}

###########################################################################################################################################

## upstream and downstream jobs in jenkins

- Upstream Job (1st job): A job that triggers another job.
- Downstream Job (2nd job): A job that is triggered by another job.


pipeline{
    agent any
    stages{
        stage("first job"){
            steps{
                echo "hi1"
            }
        }
        stage("2 job"){
            steps{
                build 'p2'                          ## here p2 is my another pipeline name
            }
        }
        }
    }

