#!/bin/bash
set -euo pipefail

# creation dossier
create_architecture () {

echo "----------------------------"
echo " Creation the switches stuff..."
echo "----------------------------"

mkdir -p "$1"/switches/access/marketing/interfaces
mkdir -p "$1"/switches/access/rh/interfaces
mkdir -p "$1"/switches/access/direction/interfaces
mkdir -p "$1"/switches/backbone/interfaces

echo "----------------------------"
echo " Creation the routers stuff..."
echo "----------------------------"

mkdir -p "$1"/routers/active/interfaces
mkdir -p "$1"/hosts/marketing
mkdir -p "$1"/hosts/direction
mkdir -p "$1"/hosts/rh

echo "----------------------------"
echo " Creating the hosts stuff..."
echo "----------------------------"

touch "$1"/hosts/marketing/192.20.10.txt
touch "$1"/hosts/marketing/192.20.11.txt
touch "$1"/hosts/rh/192.21.10.txt
touch "$1"/hosts/direction/192.22.10.txt
}
create_architecture "$1"
