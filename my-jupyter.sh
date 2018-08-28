#!/bin/bash
# installing libraries
pip install numpy pandas matplotlib seaborn bokeh
pip install opencv-python pillow
pip install requests requests-html
echo "Installing Jupyter Notebook..."
pip install jupyter notebook
echo "Installing Jupyter Lab..."
pip install jupyterlab
# after installing jupyter notebook and jupyterlab
echo "Generating jupyter and ipythong configs..."
jupyter notebook --generate-config
jupyter notebook password
ipython profile create

# add this to .jupyter/jupyter_notebook_config.py
cp ~/dotfiles/jupyter/jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py
# add this to .ipython/profile_default/ipython_config.py
cp ~/dotfiles/ipython/profile_default/ipython_config.py ~/.ipython/profile_default/ipython_config.py


