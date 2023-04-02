#!/bin/bash
set -e

export SAVEDIR="data/train_$(date +%Y%m%d_%H%M%S)"
echo SAVEDIR=$SAVEDIR
jupyter nbconvert main.ipynb --to script
mkdir "$SAVEDIR"
mv main.py "$SAVEDIR"
cp main.ipynb "$SAVEDIR"
ipython "$SAVEDIR/main.py"
