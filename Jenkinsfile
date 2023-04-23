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
				sh 'docker build -t abhishek843/abhinewjenkins:latest .'
				
			}
		}
		stage('Login') {
		     steps {
                                sh 'echo Abhi@2798 | docker login -u achoure184@gmail.com --password Abhi@2798'
                     }
                }
		
	}

}
