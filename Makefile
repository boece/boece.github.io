.DEFAULT_GOAL := build

m ?= Updates

.PHONY: build
build:
	jekyll build

.PHONY: serve
serve:
	jekyll serve

.PHONY: commit
commit:
	git add --all
	git commit -m "$(m)"

.PHONY: push
push:
	git config user.name "BOECE"
	git config user.email "OfficialBOECE@gmail.com"
	export GIT_SSH_COMMAND='ssh -i ./secrets/boece_id_rsa'
	git push

.PHONY: publish
publish: build commit push
