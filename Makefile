test: static pytest

static:
	pre-commit run --all-files

pytest:
	coverage run --concurrency=eventlet --source nameko_sentry.py --branch -m pytest test_nameko_sentry.py
	coverage report --show-missing --fail-under=100
