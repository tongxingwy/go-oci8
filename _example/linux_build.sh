#!/bin/sh
CURRENT_DIR=$(cd `dirname $0`;pwd)
REPO_DIR=$(cd `dirname $CURRENT_DIR`;pwd)
export CGO_CFLAGS="$REPO_DIR/external/include"
export CGO_LDFLAGS="-L$REPO_DIR/external/lib/linux"
export LD_LIBRARY_PATH="$REPO_DIR/external/lib/linux:$LD_LIBRARY_PATH"
export LIBRARY_PATH="$REPO_DIR/external/lib/linux:$LIBRARY_PATH"
cd $CURRENT_DIR
go run $CURRENT_DIR/oracle.go
