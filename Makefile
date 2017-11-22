.PHONY: build

default: build

install:
	@cd .pkg && npm install

debug:
	@cd .pkg && ./.pug

build:
	@cd .pkg && ./.pug build

serve:
	@cd build && python -m SimpleHTTPServer &
	@sleep 2
	@open http://localhost:8000

publish:
	@mkdir -p /tmp/_web_build
	@cd build && cp -R * /tmp/_web_build
	@git checkout gh-pages
	@mv /tmp/_web_build/* ./
