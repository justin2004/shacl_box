# shacl_box

- a docker wrapper around the [shacl reference implementation](https://github.com/TopQuadrant/shacl)
    - shacl used to just be about validation but with [this](https://w3c.github.io/shacl/shacl-af/) you can now do some inference


### why

- in case you want to play around with shacl quickly
    - https://shacl.org/playground/ does not support the advanced features yet but this project does


### how

### preparation

- you need docker and make installed 
- clone this git repo and cd into it
- build the docker image with `make`

### using the examples in this repo

- cd to this repo's directory

- to derive triples
```
docker run --rm -it -v `pwd`:/mnt justin2004/shacl_box ./shaclinfer.sh -datafile /mnt/examples/data.ttl -shapesfile /mnt/examples/shapes.ttl
```

- to validate
```
docker run --rm -it -v `pwd`:/mnt justin2004/shacl_box ./shaclvalidate.sh -datafile /mnt/examples/data.ttl -shapesfile /mnt/examples/shapes.ttl
```


### using your data

- cd to the directory with your turtle files

```
docker run --rm -it -v `pwd`:/mnt justin2004/shacl_box ./shaclvalidate.sh -datafile /mnt/your-data.ttl -shapesfile /mnt/your-shapes.ttl
```

```
docker run --rm -it -v `pwd`:/mnt justin2004/shacl_box ./shaclinfer.sh -datafile /mnt/your-data.ttl -shapesfile /mnt/your-shapes.ttl
```
