@echo off
call "C:\Users\PC KAIJU\miniconda3\condabin\activate.bat"
call conda deactivate
call conda activate tracking
cd C:\ConceivableProjects\yolov5

python train.py --batch 40 --epochs 50 --hyp "C:\ConceivableProjects\coc_or_oocyte\after\v4\Yamls\hyp.basic.yaml" --optimizer SGD --device cuda:0 --cfg "C:\ConceivableProjects\coc_or_oocyte\after\v4\Yamls\yolov5l_classes_config.yaml" --data "C:\ConceivableProjects\coc_or_oocyte\after\v4\Yamls\data_location.yaml" --imgsz 640 --weights "C:\ConceivableProjects\yolov5\runs\resolutions\coc_or_oocyte\coc_or_oocyte_h_8_8_23\weights\best.pt" --cache