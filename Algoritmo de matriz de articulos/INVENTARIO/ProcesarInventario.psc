Algoritmo ProcesarInventario
	Definir n, i Como Entero
	Definir Codigo, Cantidades, Costo, Precio, UnidadesVendidas, Saldo, ValorVenta Como Real
	n <- 0
	Saldo <- 0
	ValorVenta <- 0
	Escribir 'Ingrese la cantidad de art�culos en el inventario:'
	Leer n
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir 'Ingrese el C�digo del art�culo ', i, ':'
		Leer Codigo
		Escribir 'Ingrese la Cantidad de unidades del art�culo ', i, ':'
		Leer Cantidades
		Escribir 'Ingrese el Costo del art�culo ', i, ':'
		Leer Costo
		Escribir 'Ingrese el Precio de venta del art�culo ', i, ':'
		Leer Precio
		Escribir 'Ingrese las Unidades vendidas del art�culo ', i, ':'
		Leer UnidadesVendidas
		Saldo <- Saldo+(Cantidades*Costo)
		ValorVenta <- ValorVenta+(UnidadesVendidas*Precio)
	FinPara
	Escribir 'Saldo total del inventario:', Saldo
	Escribir 'Valor total de la venta:', ValorVenta
FinAlgoritmo
