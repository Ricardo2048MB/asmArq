# Lenguaje ensamblador en MASM
## UNITEC
### Microsoft macro assembler
Éste es un repositorio para contener diferentes versiones de lo que vemos en clase para poder jugar con las características de los programas y ver qué novedades se pueden descubrir.

22 de marzo de 2023: Ya acabo de comentar el de PRINTHEX.ASM por si quieren checarlo.

24 de marzo de 2023 [acerca de PRINTHEX.ASM]: No hacía falta reducir el programa; de hecho funciona perfectamente bien, pero la razón por la que aparenta tener etiquetas redundantes es el hecho de que se haya puesto un dato en concreto (o sea que se hardcodeó el dato pues). Pero entonces dije ¿y si el dato no fuera 3F? Así que pudo haber sido FF, EF, 33, 21, etc. En esos casos el programa está completo y no hace falta corregirlo. Lo difícil es agrupar todo eso en un procedimiento. ¿Ya vieron que todavía no nos han enseñado cómo ponerle argumentos al procedimiento sino que se dan por hecho las precondiciones? O sea, estamos poniendo la información directamente en los registros. Se pueden usar variables para los argumentos del procedimiento. La verdad no se si sea eficiente hacer eso y en realidad sea mucho más eficiente poner los datos directamente en los registros como lo hemos estado haciendo hasta ahora.

24 de marzo de 2023 14:17 :Ahorita estoy viendo como hacer el procedimiento más reciente.
