node  ('slave'){
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build images') {
        /* This builds the actual image; synonymous to
         * docker build on the command line. */
             echo "${env.BUILD_NUMBER}"
             sh 'docker build -t dsubhransu/file -f webpage .'
    }
    stage('Push Image') {
            withDockerRegistry([ credentialsId: "88abc791-3f6a-46d0-9361-d13175590d46", url: "" ]){
            echo "${env.BUILD_NUMBER}"
            sh "docker tag dsubhransu/webapp linuxcloudops/website-test:${env.BUILD_NUMBER}"
            sh "docker push dsubhransu/webapp:${env.BUILD_NUMBER}"
           }
   }
    stage('Deploy ') {  
           
           /* sh " docker srevice create --name web -p 9089:80  linuxcloudops/website-test:${env.BUILD_NUMBER}"  */
             echo "dsubhransu/webapp:${env.BUILD_NUMBER}"
             sh " sed -i 's/website-test/website-test:${env.BUILD_NUMBER}/g' docker-stack.yml"
             sh "docker stack deploy -c docker-stack.yml web" 
         }
   }
