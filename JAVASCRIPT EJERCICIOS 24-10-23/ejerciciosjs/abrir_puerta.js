let respuestaAbrir = prompt("¿Desea abrir la puerta? (Si/No)");
if (respuestaAbrir.toLowerCase() === "si") {
  let respuestaLlaves = prompt("¿Tiene las llaves de la puerta? (Si/No)");
  if (respuestaLlaves.toLowerCase() === "si") {
    console.log("Puerta abierta");
  } else {
    console.log("No tiene las llaves, no se puede abrir la puerta");
  }
} else {
  console.log("No desea abrir la puerta");
}
