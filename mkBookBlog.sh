#!/bin/sh

srcDir=$HOME/developments/WebPages/BookBlog-Jekyll-4.0/Github
buildDir=$srcDir/_site
targetDir=$HOME/Website/jantsch.se/BookBlog

cd $srcDir
bundle -v
bundle exec jekyll -v

bundle exec jekyll build

echo " "
echo "Copying built files to $targetDir ..."
rsync -av --delete $buildDir/ $targetDir

#############################################################################
echo " "
echo "Should we upload the changes to jantsch.se "
echo "with the command \"upload-Jantsch.se.sh -B\" ?"

upl="-"

until [ $upl \!= "-" ]
do read -p "Should we upload? [Y/N]: " upl
   case $upl in
       [Nn] ) upl="N" ;;
       [Yy] ) upl="Y" ;;
       [Qq] ) upl="Q" ;;
       *)     upl="-" ;;
   esac
done

echo " "
if [ $upl = "Y" ]
then upload-Jantsch.se.sh -B
else echo "Nothing uploaded."
fi

