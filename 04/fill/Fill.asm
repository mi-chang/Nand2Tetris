// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

@color
M=0

(LOOP)
  @i
  M=0
  @SCREEN
  D=A
  @address
  M=D

  @KBD
  D=M
  @FILL_BLACK
  D;JNE
  @FILL_WHITE
  0;JMP

(FILL_BLACK)
  @color
  M=-1
  @FILL
  0;JMP

(FILL_WHITE)
  @color
  M=0
  @FILL
  0;JMP

(FILL)
  @i
  D=M
  @8192
  D=A-D
  @LOOP
  D;JLE

  @color
  D=M
  @address
  A=M
  M=D
  @address
  M=M+1
  @i
  M=M+1
  @FILL
  0;JMP