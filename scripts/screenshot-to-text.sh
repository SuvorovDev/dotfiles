#!/bin/bash
tmpimg="$(mktemp /tmp/tmpXXXXXX.png)"
tmptxt="$(mktemp /tmp/tmpXXXXXX.txt)"
import "$tmpimg"
chafa "$tmpimg"
tesseract -l eng+rus "$tmpimg" "${tmptxt%.*}"
cat "$tmptxt" | xclip -sel clip
rm -f "$tmpimg" "$tmptxt"
