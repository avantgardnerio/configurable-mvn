# configurable-mvn docker image

This dockerfile extends the base Maven image to download and run jar based purely on M2 coordinate.

## Usage

```sh
docker \
    -e M2_REPO=https://user:password@mym2repo.example.com \
    -e M2_COORDINAT=com.example:example:1.0 \
    -e MAIN_CLASS=com.example.MyMainClass \
    bgard6977/configurable-mvn \
    /run.sh
```    
