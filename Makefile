start:
	chalice local --host=0.0.0.0
deploy:
	AWS_DEFAULT_REGION=us-west-2 chalice deploy
