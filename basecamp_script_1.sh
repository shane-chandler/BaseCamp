#!/bin/bash

echo "Starting BaseCamp system activity spike..."

# CPU spike (auto-stops after 8 seconds)
timeout 8s yes > /dev/null &
timeout 8s yes > /dev/null &

# Memory spike (~200MB for 8 seconds)
( MEM_BLOCK=$(head -c 200M </dev/zero | tr '\0' 'A'); sleep 8 ) &

sleep 8

echo "System activity spike completed."
