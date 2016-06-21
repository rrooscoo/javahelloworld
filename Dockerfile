FROM java:7

WORKDIR /root/

RUN mkdir src && \
    mkdir bin

COPY HelloWorld.java src
COPY luca src

RUN javac -d bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
