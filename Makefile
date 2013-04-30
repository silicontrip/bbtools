SRC=BBINFO.cpp bbainfo.cpp bbdmux.CPP bbvinfo.cpp
OBJ=BBINFO.o bbainfo.o bbdmux.o bbvinfo.o
TARGET=bbinfo bbainfo bbdmux bbvinfo



all: $(TARGET)

bbinfo: BBINFO.o
	$(CC) $(CFLAGS) -o $< $^

%.o:%.cpp
	$(CC) $(CFLAGS) -c $^

