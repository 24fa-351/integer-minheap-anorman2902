# Compiler and flags
CC = clang
CFLAGS = -Wall -Wextra -g
TARGET = minheap

# Source files
SRC = asst6.c some_heap.c

# Default target
all: $(TARGET)

# Build the executable
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

# Run the program
run: all
	./$(TARGET)

# Clean up for PowerShell
clean:
	powershell -Command "if (Test-Path $(TARGET)) { Remove-Item -Force $(TARGET) }"
