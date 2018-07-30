#!/bin/bash
set -eo pipefail

# Run confd in the background to watch the upstream servers every 10 second
confd -interval 10 -backend ssm
