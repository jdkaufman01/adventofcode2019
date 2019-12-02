$opcodes = Get-Content day2.txt 

$opcodes = 1,9,10,3,2,3,11,0,99,30,40,50

$i=0  
ForEach($opcode in ($opcodes[$i]..$opcodes[$i+4])){

    Write $opcode

}
