exp_ID=Standard_Model_GT_test_COCO_res50_256x192
cfg_file=experiments/coco/resnet/res50_256x192_d256x3_adam_lr1e-3_advmix.yaml
checkpoint=/mnt/data/hossein/Hossein_workspace/nips_cetra/hamed/exps/UsingMyCustomDataset_AndOtherSetting_ST_R50_Sigma2/20251031_1656/checkpoint_best_mAP.pth

python tools/test_corruption.py \
    --cfg  $cfg_file \
    --test_robust --exp_id $exp_ID \
    --save_suffix $exp_ID \
    TEST.MODEL_FILE $checkpoint \
    TEST.USE_GT_BBOX True
