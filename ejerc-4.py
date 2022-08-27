# Actividades phyton  ejercicio Nº 4:
# Crear un lista en Python denominado “Perro2” que contenga los siguientes valores: 14,  Fido,  12/12/2012 , Macho, 23546987
# Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.

perro2 = ["Años: 14","Nombre: Fido","Fecha: 12/12/2012","Sexo: macho","ID: 23546987"]

for i in reversed(perro2):
    print(i)
    