#!/usr/bin/env groovy
pipeline {
    agent {
        node any
    }
    environment {
      DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
    stages {
        stage('Build Image') {
            when {
                branch 'master'  //only run these steps on the master branch
            }
            steps {
			  sh 'docker build -t ganesh5556/app:1.0 .'
        }
		stage('Login') {
          steps {
            sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
          }
        }

        stage('Publish Image') {
            when {
                branch 'master' 
            }
            steps {
			  sh 'docker push ganesh5556/app'
        }
    }
}