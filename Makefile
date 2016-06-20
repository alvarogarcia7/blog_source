.PHONY: run generate

run:
	hugo serve --bind "192.168.1.133" --baseURL="192.168.1.133"

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

generateonly:
	hugo --destination alvarogarcia7.github.io
