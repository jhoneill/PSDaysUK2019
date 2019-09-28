Function Test4 {
Param($value)
try {
    $a = $value + 1
    $b = $value * 31 
    $c = [math]::Pow($value,2)
    $d = 100 / $value 
    $e = $value % 3 
    $f = $value -2 
    $g = ($a + $b) + ($c * $d) + ($e / $f ) 
    $g 
}
Catch {throw "Calculation failed" }

}


$x = Get-Random -InputObject (0..5) ; test4 $x 

1..10 | % {$x = Get-Random -InputObject (0..5) ; test4 $x  }