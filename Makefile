IMAGE=validation_test_case

build:
	docker build -t $(IMAGE) .

shell:
	docker run -it --rm -v $(PWD):/app $(IMAGE) bash

run-sentiment:
	docker run --rm -v $(PWD):/app $(IMAGE) python validate_sentiment.py

run-topics:
	docker run --rm -v $(PWD):/app $(IMAGE) python validate_topics.py
