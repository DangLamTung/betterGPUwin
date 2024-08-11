install:
	sudo apt update && sudo apt install ffmpeg && sudo apt install -y mkvtoolnix && rm -rf /var/lib/apt/lists/*
	pip install -r setup.txt

init:
# change to the folder name you want to create
	python src/init.py

import:
	python src/import/import.py

analyze: 
	python src/analyze/analyze.py --id 02082013

make dino: #test object detect ground dino
# python src/analyze/objects-ground-dino/extract.py --gpu test-collection/selected-frames/02082013 jsonl --output test-collection/objects-ground-dino/{video_id}/{video_id}-objects-ground-dino.jsonl.gz
	python src/analyze/objects-ground-dino/extract.py --gpu "test-collection/selected-frames/Phú Quốc trip" jsonl --output test-collection/objects-ground-dino/{video_id}/{video_id}-objects-ground-dino.jsonl.gz

ffmpeg:
# on Ubuntu or Debian
	sudo apt update && sudo apt install ffmpeg
