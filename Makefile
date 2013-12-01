testobj=.

install:
	composer install

install-dev:
	composer install --dev

unittest:
	@cd tests/unit/ && phpunit --colors $(testobj)

ctags:
	ctags -R --language-force=PHP src/ tests/unit/

phpdoc:
	phpdoc -d src/ -t docs/
