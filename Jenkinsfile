
pipeline {
    agent any 
    stages {
        stage('init') {
            steps {
		    sh 'chmod 777 ./clonedb.sh'
        sh './clonedb'
		   
		    
            }
        }
        stage('ApplyScripts') {
            steps {
		         echo 'Hello world!' 
            }
        }
        stage('Import') {
            steps {
		    
		    echo 'Hello world!' 
            }
        }
    }
}