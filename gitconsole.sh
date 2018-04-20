#!/bin/sh

   if [ "$GITREPO" = "" -a -d "`env |grep PWD  |grep -v OLD |cut -d "=" -f2`" ] ; then
      GITREPO="`env |grep PWD  |grep -v OLD |cut -d "=" -f2`"
   fi

   if [ "$GITREPO" != "" ] ; then
      DIRS="`/bin/ls -1 $GITREPO`"

      for dir in $DIRS ; do

	 if [ -d $GITREPO/$dir/.git ] ; then
	    #echo "$dir "
	    cd $GITREPO/$dir

	    message1=$(git rev-parse --abbrev-ref HEAD)
	    message2=$(git log -1 --pretty=format:'%cr %ci')
	    dir=`echo $dir| cut -c1-21`
	    echo -n $dir
	    echo -en '\t'
	    echo -n $message1
	    echo -en '\t'
	    echo -n $message2
	    echo -en '\n'
	fi

      done
   else

      echo "Git repositories not found."

   fi
