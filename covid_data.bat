
cd data

@echo Clone x-ray data
git clone https://github.com/agchung/Figure1-COVID-chestxray-dataset.git
git clone https://github.com/ieee8023/covid-chestxray-dataset.git

@echo Get data from Kaggle for covid
conda install -c conda-forge kaggle

@echo Set API token of Kagge
echo '{"username":"summerfang","key":"585bcb7bc55cb740b08195410a05997c"}' > kaggle.json
mkdir ~\.kaggle
move kaggle.json ~\.kaggle
kaggle competitions download -c rsna-pneumonia-detection-challenge

mkdir rsna
cd rsna
7z.exe x ..\rsna-pneumonia-detection-challenge.zip
del ..\rsna-pneumonia-detection-challenge.zip

cd ..\processed
mkdir test
cd test
copy ..\..\Figure1-COVID-chestxray-dataset\images\COVID-00001.jpg .
copy ..\..\Figure1-COVID-chestxray-dataset\images\COVID-00002.jpg .

cd ..\..\..