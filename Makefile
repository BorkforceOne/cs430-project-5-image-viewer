CC=gcc
CCFLAGS=-Wall -O3 -I./include
SOURCEDIR=src
HEADERDIR=src
LDFLAGS=-L./lib -lglfw3 -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo
OBJDIR=obj
TARGET=ezview

SOURCES=$(wildcard $(SOURCEDIR)/*.c)
OBJECTS=$(patsubst $(SOURCEDIR)/%,$(OBJDIR)/%,$(SOURCES:%.c=%.o))

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) -o $@ $^ $(LDFLAGS) -I$(HEADERDIR) -I$(SOURCEDIR)

$(OBJDIR)/%.o: $(SOURCEDIR)/%.c $(OBJDIR)
	$(CC) $(CCFLAGS) -c $< -o $@ -I$(HEADERDIR) -I$(SOURCEDIR)

$(OBJDIR):
	mkdir $(OBJDIR)

clean:
	rm -rf $(OBJDIR) $(TARGET)
