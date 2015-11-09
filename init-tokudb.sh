#!/bin/bash
set -e

echo 'Enabling TokuDB'
ps_tokudb_admin --enable
