install:
	pip install -r setup.txt

init:
# change to the folder name you want to create
	python src/init.py

ffmpeg:
	# on Ubuntu or Debian
	sudo apt update && sudo apt install ffmpeg

# # on Arch Linux
# sudo pacman -S ffmpeg

# # on MacOS using Homebrew (https://brew.sh/)
# brew install ffmpeg

# # on Windows using Chocolatey (https://chocolatey.org/)
# choco install ffmpeg

# # on Windows using Scoop (https://scoop.sh/)
# scoop install ffmpeg