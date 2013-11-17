#!/bin/sh

TARGETDIR=wp-note-flexible

mkdir ${TARGETDIR}

cp style.css            ${TARGETDIR}
cp wp-note-flexible.php ${TARGETDIR}
cp readme.txt           ${TARGETDIR}
cp screenshot-1.png     ${TARGETDIR}

find ${TARGETDIR} -name ".DS_Store" -print -exec rm {} ";"
zip -r wp-note-flexible-$1.zip ${TARGETDIR}
rm -rf ${TARGETDIR}
