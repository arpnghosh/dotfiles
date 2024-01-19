import subprocess
import os
import random
from pathlib import Path

#import the path from a dot env file
waldir="/home/awaki/.dotfiles/wallpapers/"
directory = Path(waldir)

array = []

for img in directory.iterdir():
    array.append(img.name)

image_index=random.randrange(len(array))

image_name = str(array[image_index])

full_path = waldir + image_name


subprocess.run(['swww', 'img','--transition-pos=0.854,0.977','--transition-type=grow','--transition-step=90', full_path])
