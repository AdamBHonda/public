#!/bin/bash
# SPEC
 : ${INPUT:=dir}
 : ${TYPE:=rpm}
 : ${VERSION:=1.0.0}
 : ${DEST:=/rpms}
 : ${NAME:=name}
 : ${EXCLUDE:=Dockerfile}
 : ${SRC:=.}

fpm \
  -s $INPUT \
  -t $TYPE \
  -v $VERSION \
  -p $DEST/$NAME.$VERSION.$TYPE \
  -n $NAME \
  -x $EXCLUDE \
  -x VERSION \
  -x `basename $0` \
  $SRC
