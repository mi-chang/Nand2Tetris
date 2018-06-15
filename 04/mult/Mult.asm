// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

  @result
  M=0
(LOOP)
  @R1
  MD=M-1
  @ENDLOOP
  D;JLT
  @R0
  D=M
  @result
  M=M+D
  @LOOP
  0;JMP
(ENDLOOP)
  @result
  D=M
  @R2
  M=D
(END)
  @END
  0;JMP
