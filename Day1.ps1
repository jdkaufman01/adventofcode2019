Function Get-FuelReq{ 
    Param( [int]$modulemass)

$fuelreq = [Math]::Floor([decimal]$modulemass/3) - 2

If($fuelreq -lt 0){ $fuelreq = 0 }

$fuelreq

}

$TotalFuelReq = 0
$ModuleMass = Get-Content .\day1.txt 

#### Part 1 ####

ForEach ($module in $ModuleMass){

    $Fuelreq = Get-FuelReq $module 

    $TotalFuelReq += $Fuelreq
}

$TotalFuelReq

$TotalFuelReq = 0
##### Part 2 #####


ForEach ($module in $ModuleMass){

    $freq = Get-FuelReq $module 

    [int]$FuelReq = $freq

    While($Freq -ne 0){

        $Freq = Get-FuelReq $Freq

        $FuelReq = $FuelReq + $freq

    }

    $TotalFuelReq += $Fuelreq

}

$TotalFuelReq


