pipeline {
    agent any
	// parameters {
    //     string(name: 'AppPortNumber', description: 'Please Enter the Port Number for your application.')
	// 	string(name: 'User', description: 'Please Enter the Users name running this job')
	// 	string(name: 'DBPortNumber', description: 'Please Enter the Port Number for your DB.')
	// 	// string(name: 'DockerHost', description: 'Please Enter the DockerHost for your application.',defaultValue:'tcp://root@10.20.14.238:5555')
	// 	string(name: 'AppHostname', description: 'Please Enter the hostname for your Frontend application')

	// }
    	stages {
		stage ('Building and running the container') {
			steps{
				sh (script: '''
				            docker build -t $BUILD_NUMBER
				            docker docker container run -it -d --name tomcatcontainer1 -p 8081:8080 $BUILD_NUMBER
						''')
			 	}
			}  
		}
	}
