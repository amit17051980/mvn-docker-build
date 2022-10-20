# mvn-docker-build
## Maven Docker Build Demo

This is a demo project which uses Spotify docker-file maven dependency. There are many ways to generate docker images, but I found this being the simplest use case. If you are using GitLab/GitHub, please use the modern approaches to achieve the same if possible.

## Assumptions:

1. Docker is installed on the machine where `mvn clean package install` is being used, and `docker login` has been performed.

2. Developer is testing spring boot jars only as per their work, and using eclipse/other IDE

## Developer
Use of `mvn clean package` will allow developer to continuously work on individual service and perform junit testing


## CI/CD (Jenkins)
Use of `mvn clean package install` will perform docker build with generated target/{artifact_jar} and push to the docker registry. Pipeline can be tailored to perform this in stages. i.e., perform unit test, generate image, deploy on Jenkins worker node, perform regression testing, tag the docker image and mark for release.


## Test Demo Application
The application url (standard on most spring boot apps) is as below:

http://localhost:8080

## Further Notes
1. Versioning strategy can be driven by pom.xml for jars and Dockerfile for images. Please refer the strategy that suits best for your business.

2. Refer https://docs.gitlab.com/ee/ci/docker/ for GitLab

3. Refer https://sean-bradley.medium.com/auto-devops-with-gitlab-ci-and-docker-compose-f931233f080f
