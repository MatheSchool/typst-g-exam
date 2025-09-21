    for archivo in $(ls -1 ./test/**/*.typ); do
        echo "$archivo"
        typst compile --features html --format html $archivo --root .
        
        if [ $? -ne 0 ]; then
            echo "Error al compilar: $archivo"
            exit $?
        fi

        # if [ $? -eq 0 ]; then
        #     echo "Compilación exitosa: $archivo"
        # else
        #     echo "Error al compilar: $archivo"
        # fi
    done