#!/bin/bash

HEADER="<div style='width: 100%'> \
<img style='width: 100%' src='img/header.jpg'> \
</div>"
FOOTER="<div style='width: 100%'>\
<img style='width: 100%' src='img/footer.jpg'>\
</div>"

for file in *.html
do
	echo $HEADER | cat - $file > /tmp/tempfile && mv /tmp/tempfile $file
	echo $FOOTER >> $file
done

