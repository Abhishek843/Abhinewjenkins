pipeline{
	agent any
	stages{
		stage('Checkout'){
			steps{
				git branch: "main", url: 'https://github.com/Abhishek843/Abhinewjenkins.git'
			
			}
			
		}
		
		stage('Build'){
			steps{
				sh 'chmod a+x mvnw'
				sh './mvnw clean package -DskipTests=true' 
			}
			
			post{
				always{
					archiveArtifacts 'target/*.jar'
				}
			}
		}
		
		stage(DockerBuild){
			steps{
				sh 'docker build -t leviak2798/abhinewjenkins:latest .'
				
			}
		}
		stage('Login') {

                      steps {

                              sh 'echo Abhi@2798 | docker login -u leviak2798 --password-stdin'

                      }

                }

             stage('Push') {

                    steps {

                            sh 'docker push leviak2798/abhinewjenkins'

                    }

              }

                }

                  post {

                  always {

                      sh 'docker logout'

                }

          }
		
	

}
