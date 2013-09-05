
default: components node_modules index.js

build/build.js: index.js
	@component build --dev

node_modules: package.json
	@npm install

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean build/build.js default
