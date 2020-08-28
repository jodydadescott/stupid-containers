#!/bin/bash

cd "$(dirname "$0")" || exit 2
sudo cp stupid-builder /usr/local/bin || exit 2
sudo chmod +x /usr/local/bin/stupid-builder || exit 2
exit 0
