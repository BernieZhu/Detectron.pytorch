# CUDA_VISIBLE_DEVICES='0' python tools/infer_json.py \
#  --dataset keypoints_coco2017 --cfg configs/baselines/zhu_e2e_keypoint_rcnn_R-50-FPN_1x.yaml \
#  --load_detectron data/pretrained_model/37697547.pkl \
#  --image_dir /home/haozhu/demo_source --output_dir /home/haozhu/demo

# CUDA_VISIBLE_DEVICES='0' python tools/infer_simple.py \
#  --dataset crowd --cfg configs/baselines/crowd_e2e_keypoint_rcnn_R-50-FPN_1x.yaml \
#  --load_ckpt /home/haozhu/PycharmProjects/Detectron.pytorch/Outputs/crowd_e2e_keypoint_rcnn_R-50-FPN_1x/Nov02-10-23-54_mvig-14_step/ckpt/model_step29999.pth \
#  --image_dir data/crowd/images --output_dir /home/haozhu/mask_train-crowd_test-crowd_50