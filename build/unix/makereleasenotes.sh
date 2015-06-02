#! /bin/bash -x -e

VERS="604"
ROOTSRCDIR=`dirname $0` # .../build/unix
ROOTSRCDIR=`dirname $ROOTSRCDIR` # .../build
ROOTSRCDIR=`dirname $ROOTSRCDIR` # ...

DIR="README/ReleaseNotes"
pandoc -f markdown -t html -s -S -f markdown --toc -H $ROOTSRCDIR/documentation/users-guide/css/github.css --mathjax \
$ROOTSRCDIR/$DIR/v${VERS}/index.md -o $DIR/v${VERS}/index.html

echo "Generated $DIR/v${VERS}/index.html"
echo ""

exit 0
