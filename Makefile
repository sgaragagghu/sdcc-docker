master:
	@cat Dockerfile.base Dockerfile.master > Dockerfile
mapper:
	@cat Dockerfile.base Dockerfile.mapper > Dockerfile
reducer:
	@cat Dockerfile.base Dockerfile.mapper > Dockerfile
clean:
	-@rm Dockerfile 2>/dev/null || true
