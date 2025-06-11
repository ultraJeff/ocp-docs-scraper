#!/bin/zsh

# Create download directory if it doesn't exist
DOWNLOAD_DIR="./ocp-pdf-downloads"
mkdir -p "$DOWNLOAD_DIR"

# Counter for tracking progress
total_files=$(wc -l < ocp-pdf-docs.txt)
current=0

# Loop through each URL in the file
while read -r url; do
  # Skip empty lines
  if [[ -z "$url" ]]; then
    continue
  fi
  
  # Extract the filename from the URL (last part after the last slash)
  filename=$(basename "$url")
  
  # Increment counter
  ((current++))
  
  # Display progress
  echo "[$current/$total_files] Downloading: $filename"
  
  # Download the file, appending .pdf extension if it doesn't have one
  if [[ "$filename" != *.pdf ]]; then
    filename="${filename}.pdf"
  fi
  
  curl -s -L "$url" -o "$DOWNLOAD_DIR/$filename"
  
  # Check if download was successful
  if [[ $? -eq 0 ]]; then
    echo "  ✓ Downloaded to $DOWNLOAD_DIR/$filename"
  else
    echo "  ✗ Failed to download $url"
  fi
  
done < ocp-pdf-docs.txt

echo "\nDownload complete! Files saved to $DOWNLOAD_DIR"
echo "Total files processed: $current/$total_files"

