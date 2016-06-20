.PHONY: run generate

run:
	hugo serve --bind "192.168.1.133" --baseURL="192.168.1.133"

generate:
	hugo --destination alvarogarcia7.github.io --cleanDestinationDir
	cd alvarogarcia7.github.io
	git add --all
	git commit --all -m "rebuilding site `date`"
	#git push origin master
	#cd -
