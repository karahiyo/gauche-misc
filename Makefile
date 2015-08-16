CWD=$(shell pwd)
GOSH=$(shell which gosh)

benchmark:

tarai:
	$(GOSH) -I $(CWD)/lib $(CWD)/samples/tarai.scm

tarai-with-closure:
	$(GOSH) -I $(CWD)/lib $(CWD)/samples/tarai-with-closure.scm

aobench:
	$(GOSH) -I $(CWD)/lib $(CWD)/samples/aobench.scm

test:
	$(GOSH) -I $(CWD)/lib $(CWD)/t/benchmark-test.scm

