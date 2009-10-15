# auto generated - do not edit

default: all

all:\
geom_2d-points.ali geom_2d-points.o geom_2d-triangles.ali geom_2d-triangles.o \
geom_2d-types.ali geom_2d-types.o geom_2d.ali geom_2d.o

ada-bind:\
conf-adabind conf-systype conf-adatype

ada-compile:\
conf-adacomp conf-adatype conf-systype

ada-link:\
conf-adalink conf-adatype conf-systype

ada-srcmap:\
conf-adacomp conf-adatype conf-systype

ada-srcmap-all:\
ada-srcmap conf-adacomp conf-adatype conf-systype

cc-compile:\
conf-cc conf-cctype conf-systype

cc-link:\
conf-ld conf-ldtype conf-systype

cc-slib:\
conf-systype

conf-adatype:\
mk-adatype
	./mk-adatype > conf-adatype.tmp && mv conf-adatype.tmp conf-adatype

conf-cctype:\
conf-cc mk-cctype
	./mk-cctype > conf-cctype.tmp && mv conf-cctype.tmp conf-cctype

conf-ldtype:\
conf-ld mk-ldtype
	./mk-ldtype > conf-ldtype.tmp && mv conf-ldtype.tmp conf-ldtype

conf-systype:\
mk-systype
	./mk-systype > conf-systype.tmp && mv conf-systype.tmp conf-systype

geom_2d-points.ads:\
geom_2d.ali geom_2d-types.ali

geom_2d-points.o geom_2d-points.ali:\
ada-compile geom_2d-points.adb geom_2d.ali geom_2d-points.ads
	./ada-compile geom_2d-points.adb

geom_2d-triangles.ads:\
geom_2d.ali geom_2d-types.ali geom_2d-points.ali

geom_2d-triangles.o geom_2d-triangles.ali:\
ada-compile geom_2d-triangles.adb geom_2d.ali geom_2d-triangles.ads
	./ada-compile geom_2d-triangles.adb

geom_2d-types.o geom_2d-types.ali:\
ada-compile geom_2d-types.ads geom_2d.ali geom_2d-types.ads
	./ada-compile geom_2d-types.ads

geom_2d.o geom_2d.ali:\
ada-compile geom_2d.ads geom_2d.ads
	./ada-compile geom_2d.ads

mk-adatype:\
conf-adacomp conf-systype

mk-cctype:\
conf-cc conf-systype

mk-ctxt:\
mk-mk-ctxt
	./mk-mk-ctxt

mk-ldtype:\
conf-ld conf-systype conf-cctype

mk-mk-ctxt:\
conf-cc conf-ld

mk-systype:\
conf-cc conf-ld

clean-all: obj_clean ext_clean
clean: obj_clean
obj_clean:
	rm -f geom_2d-points.ali geom_2d-points.o geom_2d-triangles.ali \
	geom_2d-triangles.o geom_2d-types.ali geom_2d-types.o geom_2d.ali geom_2d.o
ext_clean:
	rm -f conf-adatype conf-cctype conf-ldtype conf-systype mk-ctxt

regen:\
ada-srcmap ada-srcmap-all
	./ada-srcmap-all
	cpj-genmk > Makefile.tmp && mv Makefile.tmp Makefile
