#!/bin/bash

# Usage
# gs/merge.sh *.pdf

# Setup
OUTPUT_FILE=output.pdf
CURRENT_DIR=$(dirname "$0")
PAGE_NUMBER=1
BOOKMARKS="[
  /Title (Output)
  /Subject (Subject)
  /Author (John Doe)
  /DOCINFO pdfmark
"

# Loop through all files
for FILE in "$@"; do
  # Count pages
  PAGES_COUNT=$(gs -dQUIET -dNODISPLAY --permit-file-read=$FILE -c "($FILE) (r) file runpdfbegin pdfpagecount = quit")
  TITLE=$(gs -dBATCH -dQUIET -dPDFINFO -dNODISPLAY $FILE 2>&1 | grep "Title: " | awk -F ': ' '{ print $NF }')

  # Assign file path if Title is empty
  TITLE=${TITLE:-$FILE}

  # Create bookmarks
  BOOKMARKS="$BOOKMARKS [
    /Page $PAGE_NUMBER
    /Title ($TITLE)
    /OUT pdfmark
  "

  # Incrment page number
  PAGE_NUMBER=$(($PAGE_NUMBER + $PAGES_COUNT))
done

# Run main command
gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$OUTPUT_FILE "$CURRENT_DIR/pages.ps" $@ -c "$BOOKMARKS"
