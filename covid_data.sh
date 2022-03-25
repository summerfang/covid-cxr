#!/bin/sh

cd data

# Clone x-ray data
git clone https://github.com/agchung/Figure1-COVID-chestxray-dataset.git
git clone https://github.com/ieee8023/covid-chestxray-dataset.git

# Get data from Kaggle for covid
pip install kaggle

# Set API token of Kagge
echo '{"username":"summerfang","key":"585bcb7bc55cb740b08195410a05997c"}' > kaggle.json
mkdir ~/.kaggle
mv kaggle.json ~/.kaggle
kaggle competitions download -c rsna-pneumonia-detection-challenge

mkdir rsna
cd rsna
unzip ../rsna-pneumonia-detection-challenge.zip
rm ../rsna-pneumonia-detection-challenge.zip

cd ../processed
mkdir test
cd test
cp ../../Figure1-COVID-chestxray-dataset/images/COVID-00001.jpg .
cp ../../Figure1-COVID-chestxray-dataset/images/COVID-00002.jpg .

cd ../../..