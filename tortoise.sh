#!/bin/sh

rlwrap ./sbt \
  -Djline.terminal=jline.UnsupportedTerminal \
  --warn \
  'run-main org.nlogo.tortoise.rhino.Shell'
