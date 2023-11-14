mkdir -p metadata
curl https://storage.googleapis.com/openimages/v6/oidv6-train-annotations-bbox.csv -o metadata/oidv6-train-annotations-bbox.csv
curl https://storage.googleapis.com/openimages/v5/validation-annotations-bbox.csv -o metadata/validation-annotations-bbox.csv
curl https://storage.googleapis.com/openimages/v5/test-annotations-bbox.csv -o metadata/test-annotations-bbox.csv
curl https://storage.googleapis.com/openimages/v7/oidv7-class-descriptions-boxable.csv -o metadata/oidv7-class-descriptions-boxable.csv

curl https://raw.githubusercontent.com/openimages/dataset/master/downloader.py -o downloader.py