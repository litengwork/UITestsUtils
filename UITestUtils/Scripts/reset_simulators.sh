#!/bin/sh
xcrun simctl list | awk -F "[()]" '{ for (i=2; i<NF; i+=2) print $i }' | grep '^[-A-Z0-9]*$' | xargs -I uuid xcrun simctl erase uuid

