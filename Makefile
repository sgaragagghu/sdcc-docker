all:
	@mkdir master mapper reducer
	@cat Dockerfile.base Dockerfile.master > ./master/Dockerfile
	@cat Dockerfile.base Dockerfile.mapper > ./mapper/Dockerfile
	@cat Dockerfile.base Dockerfile.mapper > ./reducer/Dockerfile
clean:
	-@rm -r master mapper reducer 2>/dev/null || true
