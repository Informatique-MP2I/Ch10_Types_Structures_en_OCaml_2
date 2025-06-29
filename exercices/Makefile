SRC := Cramer
MOD := Matrix
EXE := matrix

.PHONY: clean

$(EXE): $(SRC).ml $(MOD).cmi $(MOD).cmx 
	ocamlopt -o $@ $(MOD).cmx $<

# Compile the module, generate Matrix.cmx
$(MOD).cmx: $(MOD).ml $(MOD).cmi 
	ocamlopt -c $<

# Compile the interface, generate Matrix.cmi
$(MOD).cmi: $(MOD).mli
	ocamlopt -c $<

clean:
	rm *.cmi *.cmo *.cmx *.o $(EXE)
