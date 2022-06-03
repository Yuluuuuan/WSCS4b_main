# Web Services and Cloud-Based Systems - Assignment 4b: Programming Project - Group30
## [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.6610580.svg)](https://doi.org/10.5281/zenodo.6610580)

- Yiyang Qi
- Yulu Wang
- Yuxiang Wang

## Introduction

Store sales-Time-series forecasting with the Brane framework

## Prerequisite
Brane\
Brane IDE

## Download
We use submodules for the individual packages of this repository. To clone the repository, run
```bash
$ git clone --recurse-submodules https://github.com/Yuluuuuan/WSCS4b_main.git
```

or
```bash
$ git submodule init
$ git submodule update
```

## Build
First get access to your brane instance, run
```bash
$ brane login http://127.0.0.1 --username qyy 
```

Then run:
```bash
$ make build
```

The packages should be available in the instance. You can verify this by running:
```bash
$ brane search
```

## Running the pipeline

Launch the containerized JupyterLab
```bash
$ make start-ide
```
Once launched, you may connect to the JupyterLab server by copying the address provided in the output of the command to your browser.

You should select a 'BraneScript' kernel from the lab menu. 

Then you can open the `pipeline.ipynb` in the Brane IDE. Start the workflow by run the cells in JupyterLab. You will see some results.

The needed data files will all be moving into the `/data` folder automatically by invoking `extract()` method. The result data files will be there as well.
