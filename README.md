# OpenShift Documentation Scraper

This tool allows you to download OpenShift Container Platform documentation PDFs from Red Hat's website.

## Overview

The project contains scripts to help you download PDF documentation for OpenShift Container Platform.

## Contents

- `ocp-pdf-docs.txt`: A list of URLs to OpenShift documentation PDFs
- `download-pdfs.sh`: A script that downloads all PDFs listed in the text file
- `fetchdoc.sh`: A script for downloading individual documents
- `ocp-docs/`: Directory containing documentation files

## How to Use

### Download All Documentation

To download all PDF documentation listed in the `ocp-pdf-docs.txt` file:

```bash
./download-pdfs.sh
```

This will:
1. Create a directory called `ocp-pdf-downloads` (if it doesn't exist)
2. Download each PDF from the URLs listed in `ocp-pdf-docs.txt`
3. Show progress during the download process
4. Save all PDFs to the `ocp-pdf-downloads` directory

### Requirements

- zsh shell (pre-installed on macOS)
- curl (for downloading files)
- Basic command-line tools (basename, etc.)

## Customization

If you want to change the download directory, edit the `DOWNLOAD_DIR` variable in `download-pdfs.sh`.

```bash
# Change this line in download-pdfs.sh
DOWNLOAD_DIR="./your-preferred-directory"
```

## Troubleshooting

If you encounter any issues:

1. Ensure you have internet connectivity
2. Check that the URLs in `ocp-pdf-docs.txt` are valid
3. Make sure you have write permissions in the directory

## License

This project is for personal use to download publicly available documentation.

