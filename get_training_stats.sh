#echo Commencing the training for resnet50
#python experiments/sgd/detector/train_detector.py -d PennFudanPed --arch 0 --ckpt ./checkpoints/ghn2_imagenet.pt --init_channels 48 --layers 14 --epochs 200 >| training_results/resnet50_epoch200.txt 2>&1
#echo Finished the training for resnet50

echo Commencing the training for ViT
python experiments/sgd/detector/train_detector.py -d PennFudanPed --arch 1 --ckpt ./checkpoints/ghn2_imagenet.pt --init_channels 48 --layers 14 --epochs 200 >| training_results/vit_epoch200.txt 2>&1
echo Finished the training for ViT

echo Commencing the training for DARTS
python experiments/sgd/detector/train_detector.py -d PennFudanPed --arch DARTS --ckpt ./checkpoints/ghn2_imagenet.pt --init_channels 48 --layers 14 --epochs 200 >| training_results/darts_epoch200.txt 2>&1
echo Finished the training for DARTS
