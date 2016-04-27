SRC=BBINFO.cpp bbainfo.cpp bbdmux.CPP bbvinfo.cpp
OBJ=BBINFO.o bbainfo.o bbdmux.o bbvinfo.o
TARGET=bbinfo bbainfo bbdmux bbvinfo



all: $(TARGET)

bbinfo: bbinfo.o bits.o
	$(CC) $(CFLAGS) -o $@ $^

bbainfo: bbainfo.o bits.o
	$(CC) $(CFLAGS) -o $@ $^

bbdmux: bbdmux.o bits.o
	$(CC) $(CFLAGS) -o $@ $^

bbvinfo: bbvinfo.o bits.o
	$(CC) $(CFLAGS) -o $@ $^


%.o:%.cpp
	$(CC) $(CFLAGS) -c $^

