# Makefile to download, build, start and stop the
# kaggle digit recognizer notebook
#

download:
	mkdir -p notebooks/data/
	echo "Downloading data from kaggle..."
	kaggle competitions download -c digit-recognizer -p $(PWD)/notebooks/data/

build:
	docker image build -t jupyter_deeplearning_custom .

run:
	docker run --rm \
		-p 8888:8888 \
		-v $(PWD)/notebooks:/home/jovyan/work \
		--name jupyter_kaggle_mnist \
		jupyter_deeplearning_custom

run-jupyterlab:
	docker run --rm \
		-e JUPYTER_ENABLE_LAB=yes \
		-p 8888:8888 \
		-v $(PWD)/notebooks:/home/jovyan/work \
		--name jupyter_kaggle_mnist \
		jupyter_deeplearning_custom

stop:
	docker container stop jupyter_deeplearning_custom
