pipeline {
 agent {
   label "jenkins-maven"
 }
 stages {
   stage('release') {
     steps {
       container('maven') {
         sh "docker build -t gorpcapp ."
         sh "docker run -i gorpcapp"
       } 
     }  
   } 
 }
}
         
