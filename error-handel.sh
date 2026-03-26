#!/bin/bash
create_dir(){
	mkdir demo
}
if ! create_dir; then
	echo "file exist"
	exit 01
fi
echo "code should notwork"

