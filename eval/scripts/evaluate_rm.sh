export CUDA_VISIBLE_DEVICES="6" 
python -m eval.rewardbench.rewardbench \
    --model="/H1/zhouhongli/PORM/output/Llama-2-13B-chat-helpsteer_sft_rm" \
    --dataset="eval/data/rewardbench/filtered.json" \
    --batch_size=16 \
    --load_json 