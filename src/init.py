import sys
sys.path.append("")

from pathlib import Path
import shutil
import argparse
from src.Utils.utils import read_config

def _get_skel_dir():
    config = read_config("config/common_config.yaml")
    return config['skel_dir']

class InitCommand:
    def __init__(self):
        self.parser = argparse.ArgumentParser(description='Initialize a new empty collection.')
        self.add_arguments()

    def add_arguments(self):
        self.parser.add_argument(
            '-p', '--path',
            type=Path,
            default=Path('.'),
            help='Directory to initialize (defaults to current directory)'
        )

    def execute(self):
        args = self.parser.parse_args()
        directory = args.path
        
        skel = _get_skel_dir()
        if directory.exists():
            print(f"Directory {directory} already exists. Please choose a different path.")
            return 1
        
        shutil.copytree(skel, directory, dirs_exist_ok=True)
        print(f"Initialized VISIONE collection in {directory.absolute()}")
        return 0

if __name__ == "__main__":
    command = InitCommand()
    sys.exit(command.execute())
