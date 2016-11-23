#!/bin/bash

mkdir -p zip

zip -1 -r zip/cts+aaya_csv-onebigfile.zip csv/cts+aaya.csv
zip -1 -r zip/cts+aaya_csv-onefileperbook.zip csv/cts+aaya
zip -1 -r zip/cts+aaya_nospecialchars-onefileperbook.zip csv/cts+aaya_nospecialchars
zip -1 -r zip/plain_txt.zip plain/*.txt
zip -1 -r zip/R_rds.zip rds/*.rds
# zip -1 -r zip/yaml_unmodified.zip yaml
