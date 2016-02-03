git pull

## note: must erase local public directory before generating,
## otherwise old junk will be copied into /var/www/ !
rm -rf public

hugo -b http://cm.cecs.anu.edu.au

cp -R public/* ~/cmlab
chmod -R o+rx ~/cmlab/*

