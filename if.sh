#!bin/bash


is_loyal() {
    read -p "$1 chotla vayda: " bandi
    read -p "$1 tharak: " payar

    if [[ "$bandi" == "vyara" ]]; then
        echo "$1 bacha"
    elif [[ "$payar" -gt 100 ]]; then
        echo "$1 chal jayaga"
    else
        echo "$1 to gaya"
    fi
}

# Calling the function
is_loyal "meet"


#!/bin/bash

is_loyal() {
    read -p "$1 chotla vayda: " bandi
    read -p "$1 tharak: " payar

    # Remove extra spaces from input
    bandi=$(echo "$bandi" | xargs)
    payar=$(echo "$payar" | xargs)

    if [[ "$bandi" == "vyara" ]]; then
        echo "$1 bacha"
    elif [[ "$payar" -gt 100 ]]; then
        echo "$1 chal jayaga"
    else
        echo "$1 to gaya"
    fi
}

is_loyal "meet"
