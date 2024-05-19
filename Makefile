.PHONY: dev dev-build

dev:
	docker compose down
	docker compose up -d

dev-build:
	docker compose down
	docker compose build --no-cache
	docker compose up -d
