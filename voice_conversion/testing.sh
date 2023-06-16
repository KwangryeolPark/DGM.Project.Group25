
#!/bin/bash
#testing


python -m mask_cyclegan_vc.test \
    --name mask_cyclegan_vc_KSS_TOTAL_edit \
    --save_dir results/outputs/KSS_RESULT \
    --preprocessed_data_dir /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/vcc2018_preprocessed/KSS2 \
    --gpu_ids 0 \
    --speaker_A_id KSS \
    --speaker_B_id CTK_TOTAL_edit \
    --ckpt_dir /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/test_result/mask_cyclegan_vc_KSS_TOTAL_edit/ckpts \
    --load_epoch 7000 \
    --model_name generator_A2B \

# --preprocessed_data_dir /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/vcc2018_preprocessed/TEST_DATA \

# python -m mask_cyclegan_vc.test \
#     --name mask_cyclegan_vc_CH_TOTAL_edit_CTK_TOTAL_edit \
#     --save_dir results/outputs/sssasd \
#     --preprocessed_data_dir /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/vcc2018_preprocessed/asd \
#     --gpu_ids 0 \
#     --speaker_A_id CH_TOTAL_edit \
#     --speaker_B_id CTK_TOTAL_edit \
#     --ckpt_dir /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/test_result/mask_cyclegan_vc_CH_TOTAL_edit_CTK_TOTAL_edit/ckpts \
#     --load_epoch 6000 \
#     --model_name generator_A2B \

# # --preprocessed_data_dir /home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/vcc2018_preprocessed/TEST_DATA \