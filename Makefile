requirements:
	pip install -r requirements.txt
	
build: build_extract build_line build_map build_process build_predict

build_extract:
	brane unpublish -f extract 1.0.0 && brane remove -f extract && brane build -C WSCS4b_extract container.yml && brane push extract
build_line:
	brane unpublish -f line 1.0.0 && brane remove -f line && brane build -C WSCS4b_line container.yml && brane push line

build_map:
	brane unpublish -f map 1.0.0 && brane remove -f map && brane build -C WSCS4b_map container.yml && brane push map

build_process:
	brane unpublish -f process 1.0.0 && brane remove -f process && brane build -C WSCS4b_process container.yml && brane push process

build_predict:
	brane unpublish -f predict 1.0.0 && brane remove -f predict && brane build -C WSCS4b_predict container.yml && brane push predict
