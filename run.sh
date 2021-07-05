#!/bin/bash
bugz --config-file /root/custom.conf --connection Custom -b "$BUG_HOST" -u "$BUG_USER" -p "$BUG_PASS" "$@"
