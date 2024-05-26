pipeline {
    agent any

    stages {

        stage('Run Script') {
            steps {
                sh 'chmod +x ./script.sh'
                sh 'nohup ./script.sh &'
            }
        }
       
    }
}
