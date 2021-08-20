#!/bin/bash

fzf | sed 's/^\(.*\)$/"\1"/' | xargs -r -n 1 xdg-open
