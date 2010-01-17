# auto generated - do not edit

default: all

all:\
math_2d-points.ali math_2d-points.o math_2d-triangles.ali math_2d-triangles.o \
math_2d-trigonometry.ali math_2d-trigonometry.o math_2d-types.ali \
math_2d-types.o math_2d-vectors.ali math_2d-vectors.o math_2d.a math_2d.ali \
math_2d.o

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

math_2d-points.ads:\
math_2d.ali math_2d-types.ali math_2d-vectors.ali

math_2d-points.o math_2d-points.ali:\
ada-compile math_2d-points.adb math_2d.ali math_2d-points.ads
	./ada-compile math_2d-points.adb

math_2d-triangles.ads:\
math_2d.ali math_2d-types.ali math_2d-points.ali math_2d-vectors.ali

math_2d-triangles.o math_2d-triangles.ali:\
ada-compile math_2d-triangles.adb math_2d.ali math_2d-triangles.ads
	./ada-compile math_2d-triangles.adb

math_2d-trigonometry.ads:\
math_2d.ali math_2d-types.ali

math_2d-trigonometry.o math_2d-trigonometry.ali:\
ada-compile math_2d-trigonometry.adb math_2d.ali math_2d-trigonometry.ads
	./ada-compile math_2d-trigonometry.adb

math_2d-types.o math_2d-types.ali:\
ada-compile math_2d-types.ads math_2d.ali math_2d-types.ads
	./ada-compile math_2d-types.ads

math_2d-vectors.ads:\
math_2d.ali math_2d-types.ali

math_2d-vectors.o math_2d-vectors.ali:\
ada-compile math_2d-vectors.adb math_2d.ali math_2d-vectors.ads
	./ada-compile math_2d-vectors.adb

math_2d.a:\
cc-slib math_2d.sld math_2d-points.o math_2d-triangles.o math_2d-trigonometry.o \
math_2d-types.o math_2d-vectors.o math_2d.o
	./cc-slib math_2d math_2d-points.o math_2d-triangles.o math_2d-trigonometry.o \
	math_2d-types.o math_2d-vectors.o math_2d.o

math_2d.o math_2d.ali:\
ada-compile math_2d.ads math_2d.ads
	./ada-compile math_2d.ads

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
	rm -f math_2d-points.ali math_2d-points.o math_2d-triangles.ali \
	math_2d-triangles.o math_2d-trigonometry.ali math_2d-trigonometry.o \
	math_2d-types.ali math_2d-types.o math_2d-vectors.ali math_2d-vectors.o \
	math_2d.a math_2d.ali math_2d.o
ext_clean:
	rm -f conf-adatype conf-cctype conf-ldtype conf-systype mk-ctxt

regen:\
ada-srcmap ada-srcmap-all
	./ada-srcmap-all
	cpj-genmk > Makefile.tmp && mv Makefile.tmp Makefile
