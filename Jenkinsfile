pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh './gradle-jenkins-at08/gradlew clean build -p gradle-jenkins-at08'                   
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh './gradle-jenkins-at08/gradlew test -p gradle-jenkins-at08'
                sh './gradle-jenkins-at08/gradlew jacocoTestReport -p gradle-jenkins-at08'   

                // Publish the JUnit test Report
                publishHTML target: [
                    allowMissing: false,
                    alwaysLinkToLastBuild: false,
                    keepAll: true,
                    reportDir: 'gradle-jenkins-at08/build/reports/tests/test',
                    reportFiles: 'index.html',
                    reportName: 'JUnit Report'
                  ]

                // Publish the Java Code Coverage Report
                publishHTML target: [
                    allowMissing: false,
                    alwaysLinkToLastBuild: false,
                    keepAll: true,
                    reportDir: 'gradle-jenkins-at08/build/jacocoHtml',
                    reportFiles: 'index.html',
                    reportName: 'JaCoCo Report'
                  ]                              
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh './gradle-jenkins-at08/gradlew jar -p gradle-jenkins-at08'                
            }
        }
    }

    post {
        always {            
            archiveArtifacts artifacts: 'gradle-jenkins-at08/build/libs/**/*.jar', fingerprint: true
            archiveArtifacts artifacts: 'gradle-jenkins-at08/build/libs/**/*.war', fingerprint: true
            junit 'gradle-jenkins-at08/build/test-results/**/*.xml'
        }
    }
}
