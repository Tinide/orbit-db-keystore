all: build

deps: clean
	npm install

test: deps
	npm run test
	
build: test
	npm run build
	@echo "Build success!"
	@echo "Built: 'dist/', 'examples/browser/'"

clean:
	rm -rf ipfs/
	rm -rf keystore_go-ipfs
	rm -rf keystore_js-ipfs

clean-dependencies: clean
	rm -f package-lock.json
	rm -rf node_modules/

rebuild: | clean-dependencies build
	
.PHONY: test