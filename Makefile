MODULES=json_formation_util card deck player
OBJECTS=$(MODULES:=.cmo)
MLS=$(MODULES:=.ml)
MLIS=$(MODULES:=.mli)
TEST=test.byte
MAIN=main.byte
JSONBUILD=json_formation_util.byte
OCAMLBUILD=ocamlbuild -use-ocamlfind

default:
	build
	utop
	
build:
	$(OCAMLBUILD) $(OBJECTS)

json:
	$(OCAMLBUILD) $(JSONBUILD) && ./$(JSONBUILD)

zip:
	zip ms1_src.zip *.ml* *.mli* _tags Makefile *.txt* *.json* 	

PKGS=unix,oUnit,yojson 