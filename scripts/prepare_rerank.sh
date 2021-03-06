#!/bin/bash

# build data
DATA_DIR=${PWD}/data
# SEARCH_FILENAME=$DATA_DIR/result/only_TA_train.jsonl
SEARCH_FILENAME=$DATA_DIR/result/only_TA.jsonl
# GOLDEN_FILENAME=$DATA_DIR/train.jsonl
GOLDEN_FILENAME=$DATA_DIR/test.jsonl
#DEST_FILENAME=$DATA_DIR/cite_textrank_top10_rerank_search_result_offset_10.jsonl
DEST_FILENAME=$DATA_DIR/test_vectorization_offset20.jsonl
# DEST_FILENAME=$DATA_DIR/only_TA_sample10_aggregate.jsonl

python wsdm_digg/data_process/rerank_data_builder.py -search_filename $SEARCH_FILENAME \
  -golden_filename $GOLDEN_FILENAME -dest_filename $DEST_FILENAME \
  -select_strategy 'search_result_offset' -offset 20 -sample_count 1


# DEST_FILENAME=$DATA_DIR/only_TA_sample8.jsonl.bak

# python wsdm_digg/data_process/rerank_data_builder.py -search_filename $SEARCH_FILENAME \
#   -golden_filename $GOLDEN_FILENAME -dest_filename $DEST_FILENAME \
#   -select_strategy 'search_result_offset' -offset 2 -sample_count 8