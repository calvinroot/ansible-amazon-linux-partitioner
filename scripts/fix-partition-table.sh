#!/bin/bash

set -ex

( 
  echo w
  echo y
  echo y
) | gdisk /dev/xvdf