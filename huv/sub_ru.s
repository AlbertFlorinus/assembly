.data
inBuffer:       .space 64 # Reserv 64 bytes in memory for the input buffer
outBuffer:      .space 64 # Reserv 64 bytes in memory for the output buffer

inPos:          .quad 0 # Index pointer to the current pos of the input buffer
outPos:         .quad 0 # Index pointer to the current pos of the output buffer

.text
# Define our functions as global so they can be reached from the outside of the object file
.global    inImage, getInt, getText, getChar, getInPos, setInPos, outImage, putInt, putText, putChar, getOutPos, setOutPos

inImage:
    movq $0, inPos # Resets the current pos

getInt:

getText:

getChar:

getInPos:

setInPos:

outImage:

putInt:

putText:

putChar:

getOutPos:

setOutPos: