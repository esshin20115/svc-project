FROM java:8
VOLUME /tmp
ADD /target/skcc_svc_project-0.0.1-SNAPSHOT.jar app.jar 
ENTRYPOINT ["java","-jar","app.jar"]


