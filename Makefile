.PHONY: all build clean

all: build

build:
	/home/randy/Workspace/REPOS/nitpick-build/build/npkbld build napit

clean:
	rm -rf .nitpick_make libnapit_shim.so
