Version: 0.1

# An Experimental Upload of HRDAG Data to IPFS and the Filecoin Network.

This repository contains a set of files sourced from the [Human Rights Data
Analysis Group (HRDAG)](https://hrdag.org/) website.  It is intended to be a
discrete, self-contained compilation of HRDAG's research datasets, suitable for
separate distribution. 

If you discover these files, please refer to the [original
collection](https://hrdag.org/data-publication/) for the canonical reference
files, citation details, and so on.

The list of URLs used to construct this collection is in [urls.txt](./urls.txt).
The script to download the data (using the command line utility
[curl](https://curl.se/) can be found at [munge.sh](./munge.sh).

## TODO

This is a work in progress. 

Some issues to fix before a final release:

### Automatic submission to IPFS and Filecoin via [Estuary](https://estuary.tech).

### HTML Fixups
* URLS in HTML converted to point to relative links within the collection.
* References to https://hrdag.org/policyorpanic/ converted to point to kosovo/policyorpanic/
* English, Serbian and Albanian HTML translations of hrdag.org/policyorpanic/ converted and mirrored to kosovo/policyorpanic/
* A link added to the IPFS CID of the version of this data immediately prior to the generated data.

### Sanity checks
* Are there any external links within the collection's documents? (There should not be -- it should be self-contained)
* Are there any links to non-existent files? (There should not be -- all links should resolve.)
* Are there any files that are not linked from elsewhere (Only the root document should not have a link)
* Are they all file formats we know about? (Anything that is not "csv", "pdf", "md" (markdown) is probably a typo)
* Are any short files (<120 bytes long) (This suggests an error in downloading or parsing)
* Do two separate runs of the downloading utility produce the same results?
* Are all the files accessible over IPFS?
* Are the files currently contracted to exist on the Filecoin Network for > 60 days?

Any questions on this data, please contact <danny@ffdweb.org>, <info@ffdweb.org> or <info@hrdag.org>.
