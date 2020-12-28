#!/bin/bash -xe
wget http://fenixservices.fao.org/faostat/static/bulkdownloads/FAOSTAT.zip
aws s3 cp FAOSTAT.zip s3://testingaws-faostat/inputdata/zip/FAOSTAT.zip
unzip FAOSTAT.zip -d FAOSTATzipfiles
aws s3 sync FAOSTATzipfiles s3://testingaws-faostat/inputdata/unzip/
cd FAOSTATzipfiles
for z in *.zip
do
  unzip $z -d unzip
  aws s3 cp unzip/ s3://testingaws-faostat/inputdata/data/$z/ --recursive
  rm -rf unzip
done