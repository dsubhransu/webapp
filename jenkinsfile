  node {
     def app
 
     stage('Clone repository') {
         /* Let's make sure we have the repository cloned to our workspace */
 
         checkout scm
     }
     stage('Docker Build') {
       agent any
       steps {
         sh 'docker-compose up --build -d'
       }
     }
    }
