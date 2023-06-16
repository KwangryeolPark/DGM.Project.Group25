#!/bin/bash

python data_preprocessing/preprocess_vcc2018.py \
  --data_directory vcc2018/vcc2018_training \
  --preprocessed_data_directory vcc2018_preprocessed/KSS2 \
  --speaker_ids KSS



# python data_preprocessing/preprocess_vcc2018.py \
#   --data_directory /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/vcc2018/TEST_DATA \
#   --preprocessed_data_directory vcc2018_preprocessed/asdasd \
#   --speaker_ids CH_TOTAL_edit