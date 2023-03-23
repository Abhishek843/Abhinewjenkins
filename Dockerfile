FROM openjdk:17-alpine

COPY /target/StudentDemo-0.0.1-SNAPSHOT.jar /stu-demo.jar

CMD ["java","-jar","stu-demo.jar"]

