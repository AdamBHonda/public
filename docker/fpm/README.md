# running FPM
- Build the image
docker build -t adambhonda/fpm:1.0 .

- package the current working directory with settings in VERSION file
docker run --rm --env-file=VERSION -v ~/data/rpms:/rpms -v ${PWD}:/src adambhonda/fpm:1.0
