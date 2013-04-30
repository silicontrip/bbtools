SRC=BBINFO.cpp bbainfo.cpp bbdmux.CPP bbvinfo.cpp
OBJ=BBINFO.o bbainfo.o bbdmux.o bbvinfo.o
TARGET=bbinfo bbainfo bbdmux bbvinfo



all: $(TARGET)

bbinfo: BBINFO.o BITS.o
	$(CC) $(CFLAGS) -o $@ $^

bbainfo: bbainfo.o BITS.o
	$(CC) $(CFLAGS) -o $@ $^

bbdmux: bbdmux.o BITS.o
	$(CC) $(CFLAGS) -o $@ $^

bbvinfo: bbvinfo.o BITS.o
	$(CC) $(CFLAGS) -o $@ $^


%.o:%.cpp
	$(CC) $(CFLAGS) -c $^

