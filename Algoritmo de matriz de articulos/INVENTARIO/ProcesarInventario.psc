Algoritmo ProcesarInventario
	Definir n, i Como Entero
	Definir Codigo, Cantidades, Costo, Precio, UnidadesVendidas, Saldo, ValorVenta Como Real
	n <- 0
	Saldo <- 0
	ValorVenta <- 0
	Escribir 'Ingrese la cantidad de artículos en el inventario:'
	Leer n
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir 'Ingrese el Código del artículo ', i, ':'
		Leer Codigo
		Escribir 'Ingrese la Cantidad de unidades del artículo ', i, ':'
		Leer Cantidades
		Escribir 'Ingrese el Costo del artículo ', i, ':'
		Leer Costo
		Escribir 'Ingrese el Precio de venta del artículo ', i, ':'
		Leer Precio
		Escribir 'Ingrese las Unidades vendidas del artículo ', i, ':'
		Leer UnidadesVendidas
		Saldo <- Saldo+(Cantidades*Costo)
		ValorVenta <- ValorVenta+(UnidadesVendidas*Precio)
	FinPara
	Escribir 'Saldo total del inventario:', Saldo
	Escribir 'Valor total de la venta:', ValorVenta
FinAlgoritmo
