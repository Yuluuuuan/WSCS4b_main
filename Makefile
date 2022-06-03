requirements:
	pip install -r requirements.txt
	
build: build_extract build_line build_map build_process build_predict

build_extract:
	brane unpublish -f extract 1.0.0 && brane remove -f extract && brane build -c extract container.yml && brane push extract
build_line:
	brane unpublish -f line 1.0.0 && brane remove -f line && brane build -c line container.yml && brane push line

build_map:
	brane unpublish -f map 1.0.0 && brane remove -f map && brane build -c map container.yml && brane push map

build_process:
	brane unpublish -f process 1.0.0 && brane remove -f process && brane build -c process container.yml && brane push process

build_predict:
	brane unpublish -f predict 1.0.0 && brane remove -f predict && brane build -c predict container.yml && brane push predict
