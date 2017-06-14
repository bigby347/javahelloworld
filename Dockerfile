FROM java:8

WORKDIR /home/root/javahelloworld 

COPY src /home/root/javahelloworld/src
RUN mkdir bin
RUN javac -d bin ./src/HelloWorld.java
RUN apt-get update
RUN apt-get install -y nano

ENV FOO bar

ENTRYPOINT ["java","-cp","bin","HelloWorld"]

