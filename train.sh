# For R-50-FPN_1x
# CUDA_VISIBLE_DEVICES='0, 1' python tools/train_net_step.py \
#  --dataset crowd --cfg configs/baselines/crowd_e2e_keypoint_rcnn_R-50-FPN_1x.yaml \
#  --use_tfboard --bs 4 --iter_size 2

# For R-101-FPN_1x
# CUDA_VISIBLE_DEVICES='0, 1' python tools/train_net_step.py \
#  --dataset crowd --cfg configs/baselines/crowd_e2e_keypoint_rcnn_R-101-FPN_1x.yaml \
#  --use_tfboard --bs 4 --iter_size 2

# Finetune coco from facebook model zoo
# CUDA_VISIBLE_DEVICES='0, 1' python tools/train_net_step.py \
#  --dataset keypoints_coco2017 --cfg configs/baselines/zhu_e2e_keypoint_rcnn_R-50-FPN_1x.yaml \
#  --load_detectron data/pretrained_model/37697547.pkl \
#  --use_tfboard --bs 4

# Train COCO(+), which is coco(all) - crowdpose(val+test)
# CUDA_VISIBLE_DEVICES='2, 3' python tools/train_net_step.py \
#  --dataset keypoints_coco2017 --cfg configs/baselines/e2e_keypoint_rcnn_R-50-FPN_1x.yaml \
#  --use_tfboard --bs 6 --iter_size 2

# Finetune crowdpose from COCO(+)
CUDA_VISIBLE_DEVICES='2, 3' python tools/train_net_step.py \
 --dataset crowd --cfg configs/baselines/crowd_e2e_keypoint_rcnn_R-50-FPN_1x.yaml \
 --load_ckpt Outputs/e2e_keypoint_rcnn_R-50-FPN_1x/Dec28-01-14-46_mvig-14_step/ckpt/model_step119999.pth \
 --use_tfboard --bs 6 --iter_size 2
