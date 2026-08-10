foreach ($archivo in Get-ChildItem -File ./examples/**/*.typ) {
    Write-Host $archivo.FullName

    typst compile $archivo.FullName --root .

    if ($LASTEXITCODE -ne 0) {
        Write-Error "Error al compilar: $($archivo.FullName)"
        exit $LASTEXITCODE
    }
}