# docker-continuous-delivery
Continuous Delivery Image for docker deployment

# Description
Saves your project in a docker image so that you can have stable states of this one without depending on any version control tool or a dependency management like composer/npm etc.. It just save everything with its dependencies and then extract them wherever you want to. KISS

# Usage
place this project behind the one you're developping, then 
```
docker build .
```

this will save the project inside the image, to extract it later you just have to
```
docker run [image name] > build.tar.gz
```
Of course you can push the image after building to your docker repository and version this one with the docker tags(that's actually all the point about creating this image anyway) like this
```
docker tag [your image] [your image]:[version]
```
or simply specify your version at build time
```
docker build -t [image name]:[version] .
```
and then push it to your actual repo
```
docker login
docker push [image name]:[version]
```

To extract this one of course you don't need to pull before, just a 
```
docker run [image name]:[version] > build.tar.gz
```

