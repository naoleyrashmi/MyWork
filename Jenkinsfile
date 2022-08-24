pipeline {
    agent any
	parameters {
        string(name: 'AppPortNumber', description: 'Please Enter the Port Number for your application.')
		string(name: 'User', description: 'Please Enter the Users name running this job')
		string(name: 'DBPortNumber', description: 'Please Enter the Port Number for your DB.')
		// string(name: 'DockerHost', description: 'Please Enter the DockerHost for your application.',defaultValue:'tcp://root@10.20.14.238:5555')
		string(name: 'AppHostname', description: 'Please Enter the hostname for your Frontend application')

	}
    	stages {
		stage ('Building and running the container') {
			steps{
				sh (script: '''
                          	#!/bin/bash
				            // # SEtting Docker remote host
							// export DOCKER_HOST=$DockerHost
							// echo $DOCKER_HOST
				            export AppPortNumber=$AppPortNumber
							# Run the  Stack
						    docker-compose --project-name $AppPortNumber up -d
						''')
			 	}
			}  
		}
	}
