# Makefile - Lists
SRC := Grimaud_List
EXE := list

.PHONY: clean

$(EXE): $(SRC).ml
	ocamlopt -o $@ $<

clean:
	rm *.cmi *.cmo *.cmx $(SRC).o $(EXE)
