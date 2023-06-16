#!/bin/bash

python -m mask_cyclegan_vc.train \
    --name mask_cyclegan_vc_KSS_TOTAL_edit \
    --seed 0 \
    --save_dir /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/test_result \
    --preprocessed_data_dir /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/vcc2018_preprocessed/TEST_DATA \
    --speaker_A_id KSS \
    --speaker_B_id CTK_TOTAL_edit \
    --epochs_per_save 1000 \
    --epochs_per_plot 10 \
    --num_epochs 7000 \
    --batch_size 16 \
    --decay_after 1e4 \
    --sample_rate 22050 \
    --num_frames 64 \
    --max_mask_len 25 \
    --gpu_ids 0 \


# python -m mask_cyclegan_vc.train \
#     --name mask_cyclegan_vc_dysarthria_resampled_CH_TOTAL_edit \
#     --seed 0 \
#     --save_dir /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/convert_test_result \
#     --preprocessed_data_dir /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/vcc2018_preprocessed/TEST_DATA \
#     --speaker_A_id dysarthria_resampled \
#     --speaker_B_id CH_TOTAL_edit \
#     --epochs_per_save 200 \
#     --epochs_per_plot 10 \
#     --num_epochs 6172 \
#     --batch_size 16 \
#     --decay_after 1e4 \
#     --sample_rate 22050 \
#     --num_frames 64 \
#     --max_mask_len 25 \
#     --gpu_ids 0 \


#testing

# python -m mask_cyclegan_vc.test \
#     --name mask_cyclegan_vc_CH_TOTAL_edit_CTK_TOTAL_edit \
#     --save_dir results/outputs/ \
#     --preprocessed_data_dir /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/vcc2018_preprocessed/TEST_DATA \
#     --gpu_ids 0 \
#     --speaker_A_id CH_TOTAL_edit \
#     --speaker_B_id CTK_TOTAL_edit \
#     --ckpt_dir /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/test_result/mask_cyclegan_vc_CTK_TOTAL_edit_CH_TOTAL_edit/ckpts \
#     --load_epoch 3600 \
#     --model_name generator_B2A \