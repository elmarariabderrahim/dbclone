
pipeline {
    agent any 
    stages {
        stage('Export_schema_to_git') {
            steps {
		    sh 'pwd'
		    sh 'chmod 777 ./clonedb.sh'
        	    sh './clonedb.sh'
		   
		    
            }
        }
        stage('Import_schema_apply_scripts') {
            steps {
		         sh 'chmod 777 ./git_changes.sh'
        	    sh './git_changes.sh'
            }
        }
        stage('Apply_to_db') {
            steps {
		    
		    echo 'Hello world!' 
            }
        }
    }
}
