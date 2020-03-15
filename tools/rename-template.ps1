$project_name=$args[1]
Get-ChildItem -Recurse -File -Exclude *rename-template.ps1 -Path . | ForEach-Object {
    (Get-Content -Path $_ -Raw) -replace "basic-cpp-project-template", $project_name | Set-Content -Path $_ -NoNewline
}