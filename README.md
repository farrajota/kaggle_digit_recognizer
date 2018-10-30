# Digit Recognizer challenge

My attempt at the [Kaggle's Digit Recognizer](https://www.kaggle.com/c/titanic) competition. This repo contains the code to classify digit images using Keras, Tensorflow and Pytorch deep learning frameworks. The code is available via jupyter notebooks and, depending on the deep learning library used, contains the following notebooks:

- `notebooks/keras_mnist.ipynb`: solution using Keras
- `notebooks/tensorflow_mnist.ipynb`: solution using tensorflow (TODO)
- `notebooks/pytorch_mnist.ipynb`: solution using pytorch (TODO)

## Requirements

- Python3 (3.6 recommended)
- jupyter
- [scipy stack](https://www.scipy.org/stackspec.html) (pandas, scipy, scikit-learn, etc.)
- Keras (2.2.4)
- Tensorflow (1.11.0)
- Pytorch (0.4.1)
- docker (optional)

## Getting started

The code is available via jupyter notebooks for easier use.

To run these notebooks, you need to start a jupyter server. Here, you can do it in two ways:

- a) run a local jupyter server or
- b) run a self-contained docker image.

### Run a local jupyter server

To start the jupyter server you must first have python + jupyter installed. The quickest way to accomplish this is by installing [anaconda](https://www.anaconda.com/download/).

After installing anaconda, you should create an environment:

```bash
$ conda create -n py36_jupyter python=3.6 anaconda
```

This command will install the recommended version of CPython and the necessary packages to run the code.

Finally, to start a jupyter server you simply need to run the following command:

```bash
$ jupyter notebook
```

### Run a self-contained docker image

To run the notebooks using docker, you first need to build the container's docker image. To do so, you just need to do the following:

- i) Build the container using a Makefile macro:

    ```bash
    $ make build
    ```

- ii) Run the container using a command:

    ```bash
    $ docker image build -t jupyter_deeplearning_custom .
    ```

Then, to start the container you can:

- i) Run the container using a Makefile macro:

    ```bash
    $ make run
    ```

- ii) Run the container using a command:

    ```bash
    $ docker run --rm -p 8888:8888 -v "$PWD"/notebooks:/home/jovyan/work --name jupyter_kaggle_mnist jupyter_deeplearning_custom
    ```

## Setting up the data

To run the cells in the notebooks, you must first download the data for the house prices challenge. You can get it from [Kaggle](https://www.kaggle.com/c/digit-recognizer/data) directly and you should put the `train.csv` and `test.csv` files inside the `notebooks/data/` directory.

You can also install and setup the the [kaggle api](https://github.com/Kaggle/kaggle-api) in your system and then run `make download` in the terminal to automatically download the data to the correct folder.

> Note: The data needed to run the notebooks is not provided by this repo.

## License

[MIT License](LICENSE)
