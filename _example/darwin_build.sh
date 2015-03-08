#!/bin/sh
#CURRENT_DIR=$(cd `dirname $0`;pwd)
CURRENT_DIR="/Users/iTxltd/Gohome/src/github.com/tongxingwy/go-oci8/_example"
REPO_DIR=$(cd `dirname $CURRENT_DIR`;pwd)
echo $CURRENT_DIR,$REPO_DIR
export CGO_CFLAGS="$REPO_DIR/external/include"
export CGO_LDFLAGS="-L$REPO_DIR/external/lib/darwin"
export DYLD_FALLBACK_LIBRARY_PATH="$REPO_DIR/external/lib/darwin:$DYLD_FALLBACK_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="$REPO_DIR/external/lib/darwin:$DYLD_LIBRARY_PATH"
#cd $CURRENT_DIR
go run $CURRENT_DIR/oracle.go
