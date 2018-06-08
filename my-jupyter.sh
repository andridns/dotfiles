#!/bin/bash
# installing libraries
echo "Installing Jupyter Notebook..."
sudo pip3 install jupyter notebook
echo "Installing Jupyter Lab..."
sudo pip3 install jupyterlab
# after installing jupyter notebook and jupyterlab
echo "Generating jupyter and ipythong configs..."
jupyter notebook --generate-config
jupyter notebook password
ipython profile create

# add this to .jupyter/jupyter_notebook_config.py
echo "Adding configs into .jupyter and .ipython ..."
sed -i "1ic.NotebookApp.port = 5000" .jupyter/jupyter_notebook_config.py
sed -i "1ic.NotebookApp.open_browser = False" .jupyter/jupyter_notebook_config.py
sed -i "1ic.NotebookApp.ip = '0.0.0.0'" .jupyter/jupyter_notebook_config.py
sed -i "1ic = get_config()" .jupyter/jupyter_notebook_config.py

# add this to .ipython/profile_default/ipython_config.py
sed -i "1ic.InteractiveShell.ast_node_interactivity = 'all'" .ipython/profile_default/ipython_config.py
sed -i "1ic.get_config()" .ipython/profile_default/ipython_config.py
# to edit back in Jupyter
# from IPython.core.interactiveshell import InteractiveShell
# InteractiveShell.ast_node_interactivity = 'last_expr'
