OUTPUT=`curl -Ss 'https://wttr.in/berlin?format=%C%20%t'`
echo "${OUTPUT,,}"
