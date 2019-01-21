default:
	hugo server

debug:
	hugo server -D

deploy:
	hugo --destination docs/
	git add docs/
	git commit -m "Update live site"
	git push

update-theme:
	git submodule update --remote --merge
