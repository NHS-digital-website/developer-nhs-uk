build-css:
	sass website/scss:website/css --style compressed
build-and-watch-css:
	sass website/scss:website/css --style compressed --watch