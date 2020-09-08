#!/bin/bash
#A script to generate a METS package


TEMP=./tmp/
rm -rf ${TEMP}
mkdir -p $TEMP
TEMPDIR=$(mktemp -d -p ./tmp bestiary-XXXXXXXX)


FILENAME=FiLeNaMe
SOURCE=components/dspace.mets.template.xml
FILENAME="filename.touch"
OUTPUT=dspace-mets/
DCFORMAT=DCformat
DCDESCRIPTION=EmptyDescription
DCTITLE=EmptyTitle
DCLANGUAGE=EmptyLanguage

usage()
{
    echo "usage: write this"
}

while [ "$1" != "" ]; do
    case $1 in
        -f | --filename )       shift
                                FILENAME=$1
                                ;;
        -i | --output )    	shift
				OUTPUT=$1
                                ;;
        -o | --source )    	shift
				SOURCE=$1
                                ;;
        -i | --mimetype )    	shift
				OUTPUT=$1
                                ;;
        -i | --dcformat )    	shift
				DCFORMAT=$1
                                ;;
        -i | --dcdescription )    	shift
				DCDESCRIPTION=$1
                                ;;
        -i | --dctitle )    	shift
				DCTITLE=$1
                                ;;
        -i | --dclanguage )    	shift
				DCLANGUAGE=$1
                                ;;
        -h | --help )           usage
                                exit
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done


BASE=`basename "${FILENAME}"`
STEM=${BASE%.*}


cat ${SOURCE} | sed "s|__FILENAME__|$FILENAME|" \
              | sed "s/__DC_FORMAT__/${DCFORMAT}/" \
              | sed "s/__DC_LANGUAGE__/${DCLANGUAGE}/" \
              | sed "s/__DC_PUBLISHER__/${DCPUBLISHER}/" \
              | sed "s/__DC_DESCRIPTION__/${DCDESCRIPTION}/" \
              | sed "s/__DC_SUBJECT__/${DCSUBJECT}/" \
              | sed "s/__MIMETYPE__/${MIMETYPE}/" \
              | sed "s/__DC_TITLE__/${DCTITLE}/" \
> ${TEMPDIR}/mets.xml
echo FILENAME=${FILENAME}
echo BASE=${BASE}
echo STEM=${STEM}

if [ -f "$FILENAME" ]; then
    echo "$FILENAME exists"
else 
    echo "$FILENAME does not exist, ."
    exit 2
fi


cp -p "${FILENAME}" "${TEMPDIR}"/"${BASE}"
ls -lart "${TEMPDIR}"/
zip "${TEMPDIR}"/"${STEM}-zip.zip" 
