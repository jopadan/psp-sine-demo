TARGET = sine03
OBJS =   main.o sine.o FC.o fcplay.o LamePaula.o


INCDIR    =
CFLAGS   = -G0 -Wall -O2 -fno-strict-aliasing
CXXFLAGS = $(CFLAGS) -Wno-deprecated  -fno-rtti
ASFLAGS  = $(CFLAGS)
LIBS 	 =  -lstdc++ -lm  -lpspaudiolib -lpspaudio -lpspgum -lpspgu

LIBDIR =
LDFLAGS =

EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = GUFont Sample by McZonk

PSPSDK=/usr/local/pspdev/psp/sdk
include $(PSPSDK)/lib/build.mak


strip: all	
	cp sine03.elf s.elf
	psp-strip s.elf 
