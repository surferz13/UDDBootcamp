Algoritmo ClubAmigosVino
	
	// A continuación voy a crear un sistema que permita a un vendedor de una tienda, atender una compra de un cliente de la manera más optima posible. 
    Definir producto, precio, pxq, qx, pxs como entero
	definir pxf, ivax Como Real
	
	// En el siguiente paso, el sistema le entregará tres opciones de tipo de vino al vendedor para seleccionar la venta y obtener un precio. 
    
    Repetir
        Escribir "Bienvenido al sistema de ventas de Club de Amigos del Vino. Seleccione entre los vinos disponibles:"
        Escribir "1 - Malvec"
        Escribir "2 - Cabernet Sauvignon"
        Escribir "3 - Merlot"
        Leer producto
        
        Segun producto Hacer
            1:
                precio <- 12000
                Escribir "Has elegido el Malvec."
			2:
				precio <- 15000
				Escribir "Has elegido el Cabernet"
			3:
				precio <- 20000
				Escribir "Has elegido el Merlot."
	De Otro Modo:
	Escribir "Opción inválida. Por favor, seleccione una alternativa válida."
FinSegun
Hasta Que producto >= 1 Y producto <= 3

// Ya en esta parte, el sistema solicitará al vendedor establecer la cantidad del producto a vender y obtener un descuento por llevar más de una unidad.

Escribir "Precio definido: $", precio
Escribir "Favor, escribir la cantidad del producto a llevar:"
leer qx
si qx>1 Entonces
	pxq<- (precio - (precio * 0.05)) * qx
SiNo
	pxq<- precio
FinSi

escribir "Existe un descuento de un 5% por llevar más de una unidad de vinos. Precio total:$", pxq

// En esta fase, el sistema necesita saber por parte del vendedor, si el cliente es socio de la CAV y así la posibilidad de efectuar un descuento sobre el precio. 
Repetir
	escribir "El cliente es socio del Club de Amigos del Vino?: (1-Si, 2-No)"
	leer resp
	segun resp Hacer
		1:
			pxs <- (pxq - (pxq * 0.1))
		2:
			pxs <- pxq
		De Otro Modo:
			Escribir "Opción inválida. Por favor, seleccione una alternativa válida."
	FinSegun
Hasta Que resp >=1 y resp <=2
Escribir "  "
Escribir "  "
Escribir "Por ser socio tiene un descuento de un 10% en su precio: $", pxs
pxf<- (pxs * 1.19) + (5000 + (1000 * 3 * qx))
pxt<- redon(pxf)
ivax<- pxs * 0.19
ivax<- redon(ivax)

//En esta ultima parte, el sistema imprime el detalle del precio con todos los descuentos y costos asociados al precio del producto.
Escribir "  "
Escribir "  "
Escribir "  "
Escribir "Por ser socio tiene derecho a devilery."
Escribir "El precio final de su compra + iva incluido es de: $", pxt
Escribir "  "
Escribir "  "
Escribir "Detalle del precio y costos asociados:"
Escribir "1. Costo fijo delivery por sector: es de $5000................."
Escribir "2. Costo delivery por peso del producto: es de $1000..........."
Escribir "3. Impuesto IVA 19% es de :$", ivax
	
FinAlgoritmo
