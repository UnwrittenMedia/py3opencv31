# Docker build - py3opencv31

This is an official build of the following:

* Python 3.2
* OpenCV 3.1
* Various other common tools for building apps.

## Purpose

This repository exists to support several of our internal tools.

We didn't want to build OpenCV and friends every release, so we decided
to make a base image for our other projects to build on top of.

We released it as open source so other tools can build on it.
However, there is no promise of backward compatible releases.

So, be sure to use a specific tag in your Dockerfile or tools.

## Contributing

If you wish to make suggestions, please fork, update, and submit a pull request.
