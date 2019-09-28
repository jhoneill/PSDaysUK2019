function test2 {
[cmdletbinding()]
Param ($p)
Remove-Item $p
write-verbose -Verbose "Got Here"
}

test2 wibble 

test2 wibble -ErrorAction SilentlyContinue

#so lets see whart happens if we specify error action in the function 