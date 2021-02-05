# shacl_box

- a docker wrapper around the [shacl reference implementation](https://github.com/TopQuadrant/shacl)
    - shacl used to just be about validation but with [this](https://w3c.github.io/shacl/shacl-af/) you can now do some inference


### preparation

- you need docker and make installed 
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
