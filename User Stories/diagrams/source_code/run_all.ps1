./venv/Scripts/Activate.ps1

Get-ChildItem "./" -Filter *.py | 
Foreach-Object {
    $content = Get-Content $_.FullName
    $content | python
}

deactivate