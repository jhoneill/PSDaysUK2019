function test {
    [cmdletbinding()]
    Param([switch]$GoWrong)
    Write-verbose -verbose "Starting ..."
    if ($GoWrong) {
        write-host "Something bad happened"
        throw "Failure message" ; RETURN
    }
    else {
        Write-verbose -verbose "All OK So Far"
    }
    if ($GoWrong) {
        write-host "Something worse happens. "
    }
    else {
        Write-verbose -verbose "Still OK"
    }

}

test 

test -GoWrong

test -GoWrong -ErrorAction SilentlyContinue
