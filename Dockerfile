FROM pytorch/pytorch:2.8.0-cuda12.8-cudnn9-devel

WORKDIR /app

COPY RDD/ /app/RDD/

RUN nvidia-smi

RUN cd /app/RDD/models/ops && pip install -e .

RUN pip install poselib kornia