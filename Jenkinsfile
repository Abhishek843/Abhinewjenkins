pipeline{
	agent any
	stages{
		stage('Checkout'){
			steps{
				git branch: "main", url: 'https://github.com/jasdhiratrevature/StudentDemo.git'
			
			}
			
		}
		
		stage('Build'){
			steps{
				sh 'a+x mvnw'
				sh './mvnw clean package -DskipTests=true' 
			}
			
			post{
				always{
					archiveArtifacts 'target/*.jar'
				}
			}
		}
		
	}

}