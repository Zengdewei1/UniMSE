#/bin/bash

# cd scratch place
mkdir datasets
cd datasets/

# Download zip dataset from Google Drive
# filename='OfficeHomeDataset_10072016.zip'
# fileid='0B81rNlvomiwed0V1YUxQdC1uOTg'
# wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/uc?export=download&id=${fileid}' -O- | sed -rn 's/.confirm=([0-9A-Za-z_]+)./\1\n/p')&id=${fileid}" -O ${filename} && rm -rf /tmp/cookies.txt

array=("10XPUZo8qb1ILF5_Z17AAODbrKX3_h4wL" "1pWH2xPVZFymxeJUrd6gF37qYbvmhh32s" "1NmlzPqOGiGaYbzfRi_12r2BjmKfGP3Hw")
for item in "${array[@]}"; do
    echo $item
    wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/uc?export=download&id=${item}' -O- | sed -rn 's/.confirm=([0-9A-Za-z_]+)./\1\n/p')&id=${item}" && rm -rf /tmp/cookies.txt    
done

# Unzip
# unzip -q ${filename}
# rm ${filename}
# cd