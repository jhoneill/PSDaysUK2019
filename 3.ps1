function test3 {
[cmdletbinding()]
Param ($p)
Remove-Item $p  -ErrorAction Stop
write-verbose -Verbose "Got Here"
}

test3 wibble

test3 wibble -ErrorAction SilentlyContinue
