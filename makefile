BASEDIR=./corpus

all: structure filenames

clean:
	rm -rf ${BASEDIR}

structure:
	mkdir -p ${BASEDIR}

filenames:
	mkdir -p ${BASEDIR}/filenames/
	mkdir -p ${BASEDIR}/filenames/long-ascii-filenames
	
	mkdir -p ${BASEDIR}/filenames/long-ascii-filenames/6-3
	echo content > ${BASEDIR}/filenames/long-ascii-filenames/6-3/123456.123
	
	mkdir -p ${BASEDIR}/filenames/long-ascii-filenames/8-3
	echo content > ${BASEDIR}/filenames/long-ascii-filenames/8-3/12345678.123
	
	mkdir -p ${BASEDIR}/filenames/long-ascii-filenames/9-4
	echo content > ${BASEDIR}/filenames/long-ascii-filenames/9-4/123456789.1234
	
	mkdir -p ${BASEDIR}/filenames/long-ascii-filenames/32-characters
	echo content > ${BASEDIR}/filenames/long-ascii-filenames/32-characters/123456789_123456789_123456789_12
	
	mkdir -p ${BASEDIR}/filenames/long-ascii-filenames/64-characters	
	echo content > ${BASEDIR}/filenames/long-ascii-filenames/64-characters/123456789_123456789_123456789_123456789_123456789_123456789_1234
	
	mkdir -p ${BASEDIR}/filenames/long-ascii-filenames/128-characters
	echo content > ${BASEDIR}/filenames/long-ascii-filenames/128-characters/123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_12345678
	
	# longer filenames are commented out due to length restrictions on the platform
	#mkdir -p ${BASEDIR}/filenames/long-ascii-filenames/256-characters
	#echo content > ${BASEDIR}/filenames/long-ascii-filenames/256-characters/123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456
	#
	#mkdir -p ${BASEDIR}/filenames/long-ascii-filenames/512-characters
	#echo content > ${BASEDIR}/filenames/long-ascii-filenames/512-characters/123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_123456789_12
	
	mkdir -p ${BASEDIR}/filenames/characters/colon
	echo content > ${BASEDIR}/filenames/characters/colon/:
	
	mkdir -p ${BASEDIR}/filenames/characters/a
	echo content > ${BASEDIR}/filenames/characters/a/a
	
	mkdir -p ${BASEDIR}/filenames/characters/a-macron
	echo content > ${BASEDIR}/filenames/characters/a-macron/ā
	
	mkdir -p ${BASEDIR}/filenames/characters/pipe
	echo content > ${BASEDIR}/filenames/characters/pipe/\|
	
	mkdir -p ${BASEDIR}/filenames/characters/less
	echo content > ${BASEDIR}/filenames/characters/less/\<
	
	mkdir -p ${BASEDIR}/filenames/characters/question-mark
	echo content > ${BASEDIR}/filenames/characters/question-mark/\?
	
	mkdir -p ${BASEDIR}/filenames/characters/bang
	echo content > ${BASEDIR}/filenames/characters/bang/\!	

	mkdir -p ${BASEDIR}/filenames/characters/star
	echo content > ${BASEDIR}/filenames/characters/star/\*
	
	mkdir -p ${BASEDIR}/filenames/characters/ampersand
	echo content > ${BASEDIR}/filenames/characters/ampersand/\&

	mkdir -p ${BASEDIR}/filenames/characters/chinese
	echo content > ${BASEDIR}/filenames/characters/chinese/中文
	

	
