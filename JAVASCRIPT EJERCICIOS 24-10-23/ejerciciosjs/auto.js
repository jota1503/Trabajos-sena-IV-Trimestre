let marcas = ["Toyota", "Honda", "Ford"];
let seleccion = prompt("Elija una marca de automóvil: \\n1. Toyota \\n2. Honda \\n3. Ford");
let marcaSeleccionada = marcas[Number(seleccion) - 1];

if (marcaSeleccionada) {
  let modelo = prompt(`Ha elegido ${marcaSeleccionada}. Ingrese el modelo:`);
  let color = prompt("Ingrese el color del automóvil:");
  let precio = Number(prompt("Ingrese el precio del automóvil:"));

  console.log("Detalles de la compra:");
  console.log(`Marca: ${marcaSeleccionada}`);
  console.log(`Modelo: ${modelo}`);
  console.log(`Color: ${color}`);
  console.log(`Precio: ${precio}`);
} else {
  console.log("Marca de automóvil inválida");
}
