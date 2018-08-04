TestMain_ROOT:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

TestMain_CORE_PATH=$(TestMain_ROOT)/..

CHECK_THIS_VARIABLE=exists
