#/bin/bash
export DATASET_PATH=/home/kwangryeol/dysarthria/source/train
export TEST_DATASET_PATH=/home/kwangryeol/dysarthria/source/test
export MANIFEST_FILE_PATH=/home/kwangryeol/dysarthria/scripts/train.trn
export TEST_MANIFEST_DIR=/home/kwangryeol/dysarthria/scripts/test.trn
export VOCAB_PATH=/home/kwangryeol/python/Graduate.openspeech/kspon.csv

python3 ./openspeech_cli/hydra_train.py \
    dataset=ksponspeech \
    dataset.dataset_path=$DATASET_PATH \
    dataset.test_dataset_path=$TEST_DATASET_PATH \
    dataset.manifest_file_path=$MANIFEST_FILE_PATH \
    dataset.test_manifest_dir=$TEST_MANIFEST_DIR \
    tokenizer.vocab_path=$VOCAB_PATH \
    tokenizer=kspon_character \
    model=listen_attend_spell \
    audio=melspectrogram \
    lr_scheduler=warmup_reduce_lr_on_plateau \
    trainer=gpu \
    criterion=cross_entropy \
    trainer.save_checkpoint_n_steps=100 \
    trainer.batch_size=256 \
    trainer.max_epochs=100 \
    audio.sample_rate=48000 \
    