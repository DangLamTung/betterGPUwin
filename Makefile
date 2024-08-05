install:
	sudo apt update && sudo apt install ffmpeg && sudo apt install -y mkvtoolnix && rm -rf /var/lib/apt/lists/*
	pip install -r setup.txt

init:
# change to the folder name you want to create
	python src/init.py

ffmpeg:
# on Ubuntu or Debian
	sudo apt update && sudo apt install ffmpeg
