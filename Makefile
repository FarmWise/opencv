#!/bin/bash
# Build recipe for creating a debian for the ROS package
#
# Copyright (C) 2020, FarmWise Labs Inc.
SHELL := /bin/bash

all: debian

clean:
	find . -name debian -exec rm -rf {} \;
	find . -name obj-x86_64-linux-gnu -exec rm -rf {} \;
	find . -name *.deb -delete

debian:
	farmwise_build_deb .

.PHONY: clean
.PHONY: debian
