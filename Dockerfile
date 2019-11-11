#Pull the image.
FROM maven:3.6.2-jdk-8-openj9

ENV repodir=/usr/src/mymaven

#Copy java project into the container.
WORKDIR $repodir
COPY . .

WORKDIR $repodir/spring-boot-samples/spring-boot-sample-atmosphere

#Compile with Maven
RUN bash -c 'mvn clean compile'

#Run Unit testing of the app with Maven
RUN bash -c 'mvn test'
