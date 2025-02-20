#!/bin/bash

python run_generation.py \
	--model_name_or_path LGAI-EXAONE/EXAONE-3.0-7.8B-Instruct \
	--trust_remote_code \
	--bf16 --use_hpu_graphs --attn_softmax_bf16 \
	--batch_size 1 --max_new_tokens 100 \
	--use_kv_cache \
	--trim_logits --use_flash_attention 
