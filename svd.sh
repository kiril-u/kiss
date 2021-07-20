#!/bin/bash
while [ true ]
	do
		read -p "[kiss/svd] URL: " input
	case "$input" in
		help) echo "[kiss/svd] This script asks for a URL of a video, downloads it and its english subtitles if they are available, and then loops indefinitely in the same manner until it recieves a command to exit." ;;
		exit) break ;;
		x) break ;;
		back) break ;;
		:q) break ;;
		q) break ;;
		*) youtube-dl --write-sub --sub-lang en --add-metadata --embed-subs --embed-thumbnail --add-metadata --xattrs $input ;;
	esac
	done 
