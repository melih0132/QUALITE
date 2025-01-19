DOXY_EXEC_PATH = P:/INFO2/S3/R3.04/TD1/Doc
DOXYFILE = P:/INFO2/S3/R3.04/TD1/Doc/-
DOXYDOCS_PM = P:/INFO2/S3/R3.04/TD1/Doc/perlmod/DoxyDocs.pm
DOXYSTRUCTURE_PM = P:/INFO2/S3/R3.04/TD1/Doc/perlmod/DoxyStructure.pm
DOXYRULES = P:/INFO2/S3/R3.04/TD1/Doc/perlmod/doxyrules.make

.PHONY: clean-perlmod
clean-perlmod::
	rm -f $(DOXYSTRUCTURE_PM) \
	$(DOXYDOCS_PM)

$(DOXYRULES) \
$(DOXYMAKEFILE) \
$(DOXYSTRUCTURE_PM) \
$(DOXYDOCS_PM): \
	$(DOXYFILE)
	cd $(DOXY_EXEC_PATH) ; doxygen "$<"
