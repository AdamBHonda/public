# running FPM
- Build the image

```
docker build -t adambhonda/fpm:1.0 .
```

- package the current working directory with settings in VERSION file
- choose an output directory for your rpms e.g. to ouput your rpm to /data/rpms use -v /data/rpms:/rpms
- choose an input directory for yuour source code e.g. -v /home/source:/src

## Example

```
docker run --rm --env-file=VERSION -v ~/data/rpms:/rpms -v ${PWD}:/src adambhonda/fpm:1.0
```
