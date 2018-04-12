PROJECT_NAME := food
SOURCE := train.md

QUERY := where can I find chinese food in kuala lumpur

up:
	@docker-compose up -d

down:
	@docker-compose down

train:
	@curl -XPOST -d @${SOURCE} localhost:5000/train?project=${PROJECT_NAME}

test:
	@curl -XPOST localhost:5000/parse -d '{"q":"${QUERY}", "project": "${PROJECT_NAME}"}' | python -mjson.tool

status:
	@curl localhost:5000/status | python -mjson.tool

version:
	@curl localhost:5000/version | python -mjson.tool