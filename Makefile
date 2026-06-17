.PHONY: all build clean

all: build

build:
	gcc -shared -fPIC -o libnapit_shim.so shim/napit_shim.c
	/home/randy/Workspace/REPOS/nitpick-build/build/npkbld build napit

clean:
	rm -rf .nitpick_make libnapit_shim.so
