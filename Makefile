.PHONY: run generate generate-ci

IP := $(shell ifconfig en0|grep "inet addr"|cut -d: -f2 | cut -d" " -f1)

run:
	hugo serve --bind "${IP}" --baseURL="${IP}"

generate:
	$(MAKE) update-source
	#git submodule update
	$(MAKE) update-generated
	hugo --destination alvarogarcia7.github.io
	$(MAKE) save-and-sync-generated

generate-in-docker:
	$(MAKE) update-source
	#git submodule update
	$(MAKE) update-generated
	$(MAKE) run-in-docker
	echo "If results are OK, you might want to: 'make save-and-sync-generated'"
	

update-source:
	git pull origin
	git push origin
.PHONY: update-source

update-generated:
	cd alvarogarcia7.github.io; git pull
.PHONY: update-generated

save-and-sync-generated:
	cd alvarogarcia7.github.io; git add --all
	cd alvarogarcia7.github.io; git commit --all -m "rebuilding site `date`"
	cd alvarogarcia7.github.io; git push origin master
.PHONY: save-and-sync-generated

generate-ci:
	./hugo version
	./hugo --destination alvarogarcia7.github.io
	cd alvarogarcia7.github.io; git add --all
	cd alvarogarcia7.github.io; git commit --all -m "rebuilding site `date`" --allow-empty
	cd alvarogarcia7.github.io; git push origin master

generateonly:
	hugo --destination alvarogarcia7.github.io

docker-bash:
	docker run -p 8090:8090 -it -v ${PWD}:/src jojomi/hugo:0.76 sh

run-server-in-docker:
	docker run -p 8090:8090 -v ${PWD}:/src jojomi/hugo:0.76 hugo server --port 8090 --bind 0.0.0.0 --baseURL="http://localhost"

run-in-docker:
	docker run -p 8090:8090 -v ${PWD}:/src -v ${PWD}/alvarogarcia7.github.io:/alvarogarcia7.github.io jojomi/hugo:0.76 hugo --destination /alvarogarcia7.github.io
