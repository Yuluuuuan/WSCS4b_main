# Web Services and Cloud-Based Systems - Assignment 4b: Programming Project - Group30
## [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.6612514.svg)](https://doi.org/10.5281/zenodo.6612514)

## Members

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
run command `cd` into main repository:
```bash
$ cd WSCS4b_main
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
Make sure you install the BraneScript kernel for JupyterLab.

Clone the IDE repository:
```bash
$ git clone https://github.com/epi-project/brane-ide.git
```

Then use command `cd` into the repository:
```bash
$ cd brane-ide
```

Launch the containerized JupyterLab
```bash
$ make start-ide
```
Once launched, you may connect to the JupyterLab server by copying the address provided in the output of the command to your browser.

You should select a 'BraneScript' kernel from the lab menu. 

Then you can open the `pipeline.ipynb` in the Brane IDE. Start the workflow by run the cells in JupyterLab. You will see some results.

The needed data files will all be moving into the `/data` folder automatically by invoking `extract()` method. The result data files will be there as well.
