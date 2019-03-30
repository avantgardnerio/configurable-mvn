# configurable-mvn docker image

This dockerfile extends the base Maven image to download and run jar based purely on M2 coordinate.

## Problem statement

- Building fat jars slows down gradle/mvn/sbt builds
- Keeping redundant copies of all dependencies bloats artifactory/nexus/etc

## Solution

This docker image allows jars to be run without first embedding all their dependencies into a fat jar.

## Usage

```sh
docker \
    -e M2_REPO=https://user:password@mym2repo.example.com \
    -e M2_COORDINATE=com.example:example:1.0 \
    -e MAIN_CLASS=com.example.MyMainClass \
    bgard6977/configurable-mvn \
    /run.sh
```    
