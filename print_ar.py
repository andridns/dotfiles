import numpy as np


def plot(im, figsize=(18,10), cmap='gray'):
    plt.figure(figsize=figsize)
    plt.imshow(im, cmap=cmap)
    plt.show()

def print_ar(ar):
    print("dtype", ar.dtype, "shape", ar.shape, "min", ar.min(), "max", ar.max())
    if ar.ndim == 3:
        print("channel1 min", ar[:,:,0].min(), "max", ar[:,:,0].max())
        print("channel2 min", ar[:,:,1].min(), "max", ar[:,:,1].max())
        print("channel3 min", ar[:,:,2].min(), "max", ar[:,:,2].max())
    elif ar.ndim == 2:
        print("channel1 min", ar.min(), "max", ar.max())
