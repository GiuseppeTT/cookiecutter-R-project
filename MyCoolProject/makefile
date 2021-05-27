.PHONY: install_dependencies
install_dependencies:
	Rscript -e 'install.packages("devtools")'
	Rscript -e 'devtools::install_deps(dependencies = "soft")'

.PHONY: clean
clean:
	rm -rf man/
	rm -f NAMESPACE
	Rscript -e "targets::tar_destroy()"
	find output/ -not -name ".*" -type f -delete

.PHONY: test
test:
	Rscript -e 'devtools::test()'

.PHONY: document
document:
	Rscript -e 'devtools::document()'

.PHONY: check
check:
	Rscript -e 'devtools::check()'

.PHONY: install
install:
	Rscript -e 'devtools::install()'

.PHONY: lint
lint:
	Rscript -e 'lintr::lint_package()'

.PHONY: run
run:
	Rscript -e 'targets::tar_make()'

.PHONY: all
all: clean test document check install lint run
