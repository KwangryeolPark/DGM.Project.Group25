
#!/bin/bash
#testing
python train.py \
    --output_directory=/home/changhyeon/code/DGM_INFERENCE/tacotron2/test_result_retrain \
    --log_directory=/home/changhyeon/code/DGM_INFERENCE/tacotron2/test_log_retrain \
    --n_gpus=1 \
    --checkpoint_path=/home/changhyeon/code/DGM_INFERENCE/tacotron2/test_result/checkpoint_48000 \