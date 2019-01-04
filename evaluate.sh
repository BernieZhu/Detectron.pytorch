# For R-50-FPN_1x
CUDA_VISIBLE_DEVICES='0' python tools/test_net.py \
 --dataset crowd --cfg configs/baselines/crowd_e2e_keypoint_rcnn_R-50-FPN_1x.yaml \
 --load_ckpt Outputs/crowd_e2e_keypoint_rcnn_R-50-FPN_1x/Dec30-14-45-24_mvig-14_step/ckpt/model_step29999.pth
#  --multi-gpu-testing

# For R-101-FPN_1x
# CUDA_VISIBLE_DEVICES='0' python tools/test_net.py \
#  --dataset crowd --cfg configs/baselines/crowd_e2e_keypoint_rcnn_R-101-FPN_1x.yaml \
#  --load_ckpt Outputs/crowd_e2e_keypoint_rcnn_R-101-FPN_1x/Dec11-00-51-06_mvig-14_step/ckpt/model_step89999.pth
#  --multi-gpu-testing