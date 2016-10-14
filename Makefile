.PHONY: run generate generate-ci

IP := $(shell ifconfig enp0s3|grep "inet addr"|cut -d: -f2 | cut -d" " -f1)

run:
	hugo serve --bind "${IP}" --baseURL="${IP}"

generate:
	git pull origin
	git push origin
	#git submodule update
	cd alvarogarcia7.github.io; git pull
	hugo --destination alvarogarcia7.github.io
	cd alvarogarcia7.github.io
	cd alvarogarcia7.github.io; git add --all
	cd alvarogarcia7.github.io; git commit --all -m "rebuilding site `date`"
	cd alvarogarcia7.github.io; git push origin master

generate-ci:
	hugo version
	hugo --destination alvarogarcia7.github.io
	cd alvarogarcia7.github.io; git add --all
	cd alvarogarcia7.github.io; git commit --all -m "rebuilding site `date`"
	cd alvarogarcia7.github.io; git push origin master

generateonly:
	hugo --destination alvarogarcia7.github.io
