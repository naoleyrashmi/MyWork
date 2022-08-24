## GI POC Guidelines 

1. Configuration required to be done :
    - Puppet Master Version : 6.13  set on 10.20.14.212
    - Puppet Agent : 6.18  set on 10.20.14.118
2. Create modules on Puppet master :
    - Java 
    - Tomcat 
    - Custom Module for AWS 

3. Create site.pp under manifests folder /etc/puppetlabs/code/environments/production/manifests
4. Set Auto sign to true on Puppet master on /etc/puppetlabs/puppet/puppet.conf
5. Created custom Dockerfile for puppetclient instalation , AWS CLI , PLSQL Client
6. Few commands to be used :

        - Docker build -f puppetclient .
        - Once images downloaded run Docker compose
        - docker-compose up -d 
        - psql -h postgresdb -U admin -d gidb -p 5432
        - aws s3 cp /etc/puppetlabs/puppet/puppet.conf s3://gi-artifacts
        - aws s3 ls s3://gi-artifacts
        - aws s3 cp  s3://gi-artifacts/text.txt .
        - export DOCKER_HOST=10.20.14.238:5555
        - http://10.20.14.238:9005/SampleWebApp/SnoopServlet

7. Below tasks have been achieved as part of this POC 
        - Puppet Master and Client connectivity 
        - Containarise 2 tier application with Tomcat as frontend and Postgres as backend.
        - Tomcat installation and configuration fetched from Puppet Master.
        - Git connectivity established within container.
        - DB connectvity established within container.
        - S3 connectvity established within container.
        - Jenkins Pipeline set for setting up the environment and destroying the same.
        - Running the container on remote machine.
        - Using same JenkinsJOb to create unique containers





