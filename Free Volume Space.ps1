get-volume | 
Where-object {$_.Size -gt 100gb} |
foreach-object { write-host "Free space for" $_.DriveLetter":\" "is" ("{0:N2}" -F  ($_.SizeRemaining/1gb)) -foregroundcolor red }