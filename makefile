CC=gcc
INC=./include
SRC=./src
OBJ=./obj

EXC_NAME=hellomake_m

CFLAGS=-I $(INC)

objects := $(patsubst %.c,%.o,$(wildcard $(SRC)/*.c))

cfiles=$(wildcard $(SRC)/*.c)
ofiles_1=$(patsubst $(SRC)%,$(OBJ)%,$(cfiles))
ofiles=$(patsubst %.c,%.o,$(ofiles_1))
	

$(OBJ)/%.o: $(SRC)/%.c
	mkdir -p $(OBJ)
	$(CC) $(CFLAGS) -c -o $@ $<



hellomake: $(ofiles)
	$(CC) -o $(EXC_NAME) $(ofiles) $(CFLAGS)
	
	
clean:
	rm $(OBJ)/* ./$(EXC_NAME)
