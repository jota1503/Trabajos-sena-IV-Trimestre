function inventario(n) {
  const codigo = [];
  const cantidades = [];
  const costo = [];
  const precio = [];
  const unidades_vendidas = [];
  const saldo = [];
  let valor_venta = 0;
  for (let i = 0; i < n; i++) {
    codigo[i] = prompt("Ingrese el código del artículo: ");
    cantidades[i] = parseInt(prompt("Ingrese la cantidad del artículo: "));
    costo[i] = parseFloat(prompt("Ingrese el costo del artículo: "));
    precio[i] = parseFloat(prompt("Ingrese el precio del artículo: "));
    unidades_vendidas[i] = parseInt(prompt("Ingrese las unidades vendidas del artículo: "));
  }
  for (let i = 0; i < n; i++) {
    saldo[i] = cantidades[i] - unidades_vendidas[i];
  }
  for (let i = 0; i < n; i++) {
    valor_venta += precio[i] * unidades_vendidas[i];
  }
  document.write("Saldo de los artículos:");
  for (let i = 0; i < n; i++) {
    document.write(`Código: ${codigo[i]} | Cantidad: ${saldo[i]}`);
  }
  document.write("Valor de la venta: $", valor_venta);
}
const n = parseInt(prompt("Ingrese la cantidad de artículos de inventario: "));
inventario(n);
