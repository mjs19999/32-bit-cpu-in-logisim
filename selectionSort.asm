#selection sort algorithim#
#############


addi $1, $0, 4 #0
sw $1, 0($0) #1
addi $1, $0, 2 #2
sw $1, 4($0) #3
addi $1, $0, 6 #4
sw $1, 8($0) #5
addi $1, $0, 1 #6
sw $1, 12($0) #7
addi $1, $0, 7 #8
sw $1, 16($0) #9



selectionSort: 
addi $8, $0, 0 #i = 0 #10
addi $9, $0, 5 #n #11
add $11, $0, $0 #address i[0] #12
fori:
addi $10, $9, -1 #13
bge $8, $10, endFori #14
add $12, $0, $11 #address small = address i #15
addi $13, $8, 1 #j = i+1 #16
addi $14, $11, 4 #address j = address i + 4 #17
forj:
bge $13, $9, endForj #18
lw $17, 0($12) #19
lw $18, 0($14) #20
bge $18, $17, false #21
add $12, $0, $14 #small = j #22
false:
addi $14, $14, 4 #23
addi $13, $13, 1 #24
jal $0 forj #25
endForj:
lw $24, 0($12) # temp = A[small] #26
lw $25, 0($11) # temp2 = A[i] #27
sw $25, 0($12) #A[small] = $ #28
sw $24, 0($11) #29
addi $11, $11, 4 #30
addi $8, $8, 1 #31
jal $0 fori #32
endFori:

trap:
jal $0 trap
