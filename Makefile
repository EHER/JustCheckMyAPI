default: help

help:
	@echo "help\t\tThis message
	@echo "clean\t\tRemove all responses saved
	@echo "run\t\tCheck API Status and save responses

clean:
	@echo "Cleaning responses..."
	@rm -rf responses/*
	@echo "Clear!"

run: clean
	@echo "Running..."
	@mkdir -p responses
	@cd responses; wget -i ../urls.txt -x
	@echo "Done!"

