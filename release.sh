#!/bin/sh

# It is a script to generate the release image.
# ex: $ bash release.sh v1.0.0
# 
# @param $1 Version suffix

TARGETDIR=wp-note-flexible

mkdir ${TARGETDIR}

# Sub directories
cp -r css   ${TARGETDIR}
cp -r fonts ${TARGETDIR}

# Files
cp style.css            ${TARGETDIR}
cp wp-note-flexible.php ${TARGETDIR}
cp readme.txt           ${TARGETDIR}
cp screenshot-1.png     ${TARGETDIR}

find ${TARGETDIR} -name ".DS_Store" -print -exec rm {} ";"
zip -r wp-note-flexible-$1.zip ${TARGETDIR}
rm -rf ${TARGETDIR}
