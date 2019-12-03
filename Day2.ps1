$opcodes = ((Get-Content day2.txt).split(",")).forEach({[int]$psitem})

#$opcodes = 1,9,10,3,2,3,11,0,99,30,40,50

$i=0  
Do{
    Switch($opcodes[$i]){

       1 {  

            $x = $opcodes[$i+1] 

            $y = $opcodes[$i+2]

            $j = $opcodes[$x] + $opcodes[$y]

            $z = $opcodes[$i+3]
            
            $opcodes.Item($z) = $j 

            $i = $i + 4

            }

       2 {  

            $j = ($opcodes[$opcodes[$i+1]] * $opcodes[$opcodes[$i+2]])

            $opcodes.Item($opcodes[$i+3]) = $j 

            $i = $i + 4

            }
      99 { 

          Write-Output $opcodes[0]

          throw }


    }  
}While($i -lt $opcodes.Count)