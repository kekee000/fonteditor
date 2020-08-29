#!/bin/bash
cd $(dirname $0)
[ -d ./output ] && rm -r output

npm run prod

cp -r dep output/fonteditor
cp -r font output/fonteditor
cp empty.html proxy.html output/fonteditor
cd output

tar -zcf fonteditor.tar.gz ./fonteditor
rm -rf fonteditor

echo 'build to `dist` done'