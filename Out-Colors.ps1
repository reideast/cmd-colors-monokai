function Out-Colors()
{
    [enum]::GetValues([ConsoleColor]) | % {
        Write-Host ('{0,2:N0} ' -f $_.value__) -NoNewline
        Write-Host ('{0,-12}' -f $_) -ForegroundColor $_ -NoNewLine
        Write-Host "`t" -BackgroundColor $_
    }
}
