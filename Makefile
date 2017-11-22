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
