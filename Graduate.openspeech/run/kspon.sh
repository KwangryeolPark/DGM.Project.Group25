#/bin/bash
export BASE_PATH=/home/kwangryeol/media2/Korean_voice
export DATASET_PATH=$BASE_PATH
export TEST_DATASET_PATH=$BASE_PATH/KsponSpeech_eval
export TEST_MANIFEST_DIR=$BASE_PATH/KsponSpeech_scripts
export MANIFEST_FILE_PATH=$BASE_PATH/KsponSpeech_scripts/train.trn
export VOCAB_PATH=/home/kwangryeol/python/Graduate.openspeech/kspon.csv

python3 ./openspeech_cli/hydra_train.py \
    dataset=ksponspeech \
    dataset.dataset_path=$DATASET_PATH \
    dataset.test_dataset_path=$TEST_DATASET_PATH \
    dataset.test_manifest_dir=$TEST_MANIFEST_DIR \
    dataset.manifest_file_path=$MANIFEST_FILE_PATH \
    tokenizer.vocab_path=$VOCAB_PATH \
    tokenizer=kspon_character \
    model=listen_attend_spell \
    audio=melspectrogram \
    lr_scheduler=warmup_reduce_lr_on_plateau \
    trainer=gpu \
    criterion=cross_entropy \
    trainer.save_checkpoint_n_steps=100 
