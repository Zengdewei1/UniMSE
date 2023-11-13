#/bin/bash

# cd scratch place
mkdir datasets
cd datasets/

# Download zip dataset from Google Drive
# filename='OfficeHomeDataset_10072016.zip'
# fileid='0B81rNlvomiwed0V1YUxQdC1uOTg'
# wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/uc?export=download&id=${fileid}' -O- | sed -rn 's/.confirm=([0-9A-Za-z_]+)./\1\n/p')&id=${fileid}" -O ${filename} && rm -rf /tmp/cookies.txt

https://drive.google.com/file/d/1alEn_5RfHFXuu8jwEFMIbMOLF-28--k_/view?usp=sharing 
text:https://drive.google.com/file/d/1F4K75-_aj29Qyd1xaA19p-LLA0hbI9g0/view?usp=sharing

array=("10XPUZo8qb1ILF5_Z17AAODbrKX3_h4wL" "1pWH2xPVZFymxeJUrd6gF37qYbvmhh32s" "1NmlzPqOGiGaYbzfRi_12r2BjmKfGP3Hw" "1alEn_5RfHFXuu8jwEFMIbMOLF-28--k_" "1F4K75-_aj29Qyd1xaA19p-LLA0hbI9g0")
names=("IEMOCAP" "MELD" "MOSEI" "MOSI" "TEXT")
for ((i=0; i<${#array[@]}; i++)); do
# for item in "${array[@]}"; do
    item=${array[i]}
    name=${names[i]}
    wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/uc?export=download&id=${item}' -O- | sed -rn 's/.confirm=([0-9A-Za-z_]+)./\1\n/p')&id=${item}" && rm -rf /tmp/cookies.txt    
done

# Unzip
for ((i=0; i<${#names[@]}; i++)); do
# for item in "${array[@]}"; do
    name=${names[i]}
    unzip -q ${name}
done
# rm ${filename}
# cd