for i in *.jpg; do echo "Processing $i"; exiftool -all= "$i"; done
