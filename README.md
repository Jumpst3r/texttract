## General purpose text extraction

### Description

Extract text from a multitude of filetypes (audio, images, gif, rich documents such as xls, pdf, pptx etc). Convieniently packaged in a docker image.

### Usage

To use the docker image, first pull the image using

`docker pull jumpst3r/textextract

And then execute 
```
docker run -it --rm -v /PATH_TO_FOLDER/input.pdf:/input/ -v /FULL_PATH_TO_OUTPUT_FOLDER/:/output/ jumpst3r/textextract sh /input/script.sh /input/input.pdf /output/
```

The input consists of:

A supported file type. See `install.json` for a subset of supported file types

The output consists of:

- A text file containing the extracted text

The docker image is also compatible with [DIVAServices](https://github.com/lunactic/DIVAServices) a web-based framework providing streamlined access to DOI methods.

### Sources / Comments

Original [repo](https://github.com/deanmalmgren/textract)
