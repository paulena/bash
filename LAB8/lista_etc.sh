#!/bin/bash

ls -l /etc/ | sed 's/^d/En katalog -> d/p;s/^l/En länk -> l/p'

exit 0
