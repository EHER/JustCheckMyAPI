default: help

help:
	@echo "help\t\tThis message"
	@echo "clean\t\tRemove all responses saved"
	@echo "run\t\tCheck API Status and save responses"
	@echo "log\t\tShow reponses change log"
	@echo "diff\t\tShow reponses diff by change log "

clean:
	@echo "Cleaning responses..."
	@rm -rf responses/*
	@echo "Clear!"

run: clean
	@echo "Running..."
	@mkdir -p responses
	@cd responses; wget -i ../urls.txt -x -nv
	@cd responses; git init; git add -A; git commit -am "updated"
	@echo "Done!"

log:
	@echo "Getting change log"
	@cd responses; git log

diff:
	@echo "Getting diff by change log"
	@cd responses; git log -p
