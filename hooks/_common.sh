#!/usr/bin/env bash

function common::check-command {
	if ! command -v "$1" &>/dev/null; then
		echo "$1 not installed or available in the PATH" >&2
		exit 1
	fi
}
