#
# 1750 Evo SBC  
#
#  Yao Fei  2000/02/06

XGC=/opt/m1750-ada/bin/m1750-coff-
CROSSGCC = 
CFLAGS = -g -O2
#CFLAGS = -g -O6 
CXXFLAGS = -g -O2 
CDEBUGFLAGS = -g
LDLIBS = 
LDFLAGS = -Wl,-Map=1750sbc.map

CC	= ${XGC}gcc
CXX 	= ${XGC}c++
LD      = ${XGC}ld
RUN     = ${XGC}run
DBG     = ${XGC}gdb
OBJCOPY = ${XGC}objcopy
STRIP   = ${XGC}strip

#
#
#

SOURCES = main.c yfutil.c ace.c bc.c
OBJS    = main.o yfutil.o ace.o  bc.o
ASMS    = 1750sbc.s
TARGETS = 1750sbc
HEX     = $(TARGETS).hex

all:    1750sbc

1750sbc:	$(OBJS)
	$(CC) -g -o $@ $(OBJS) $(LDLIBS) $(LDFLAGS)

run:    $(TARGETS)
	$(RUN) $(TARGETS)

debug:  $(TARGETS)
	$(DBG) $(TARGETS)

clean:
	rm -rf $(OBJS) $(TARGETS) $(TARGETS).hex $(TARGETS).bin

# depend


