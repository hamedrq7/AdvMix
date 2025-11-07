which_dataset=$1

exp_ID=GT_test_COCO_res50_256x192_advmix
cfg_file=experiments/coco/resnet/res50_256x192_d256x3_adam_lr1e-3_advmix.yaml
checkpoint=/mnt/data/hossein/Hossein_workspace/nips_cetra/hamed/exps/UsingMyCustomDataset_AndOtherSetting_ST_R50_Sigma2/20251031_1656/checkpoint_best_mAP.pth

python tools/test_corruption.py --cfg  'experiments/coco/resnet/res50_256x192_d256x3_adam_lr1e-3_advmix.yaml' --test_robust --exp_id 'GT_test_COCO_res50_256x192_advmix' --save_suffix 'GT_test_COCO_res50_256x192_advmix' TEST.MODEL_FILE '/mnt/data/hossein/Hossein_workspace/nips_cetra/hamed/exps/UsingMyCustomDataset_AndOtherSetting_ST_R50_Sigma2/20251031_1656/checkpoint_best_mAP.pth' TEST.USE_GT_BBOX True
