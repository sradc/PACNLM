#!/bin/bash
jupyter nbconvert main.ipynb --to script  \
    && ipython main.py
