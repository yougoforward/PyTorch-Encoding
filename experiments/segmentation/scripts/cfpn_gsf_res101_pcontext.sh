# !/usr/bin/env bash
# train
python train.py --dataset pcontext \
    --model cfpn_gsf --aux --base-size 520 --crop-size 520 \
    --backbone resnet101 --checkname cfpn_gsf_res101_pcontext

#test [single-scale]
python test.py --dataset pcontext \
    --model cfpn_gsf --aux --base-size 520 --crop-size 520 \
    --backbone resnet101 --resume runs/pcontext/cfpn_gsf/cfpn_gsf_res101_pcontext/model_best.pth.tar --split val --mode testval

#test [multi-scale]
python test.py --dataset pcontext \
    --model cfpn_gsf --aux --base-size 520 --crop-size 520 \
    --backbone resnet101 --resume runs/pcontext/cfpn_gsf/cfpn_gsf_res101_pcontext/model_best.pth.tar --split val --mode testval --ms