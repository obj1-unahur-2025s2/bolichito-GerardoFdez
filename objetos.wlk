object rojo {
  method esFuerte() = true 
}
object verde {
  method esFuerte() = true
}
object celeste {
  method esFuerte() = false
}
object pardo {
  method esFuerte() = false
}
object cobre {
  method esBrillante() = true
}
object vidrio {
  method esBrillante() = true
}
object lino {
  method esBrillante() = false
}
object madera {
  method esBrillante() = false
}
object cuero {
  method esBrillante() = false
}
object remera {
  method color() = rojo
  method material() = lino
  method peso() = 800
}
object pelota {
  method color() = pardo
  method material() = cuero
  method peso() = 1300
}
object biblioteca {
  method color() = verde
  method material() = madera
  method peso() = 8000
}
object munieco {
  var peso = 10

  method color() = celeste
  method material() = vidrio
  method verPeso() = peso

  method cambiarPeso(pesoNuevo) {
    peso = pesoNuevo
  }
}
object placa {
  var peso = 20
  var color = pardo

  method  material() = cobre

  method peso() = peso
  method color() = color

  method cambiarColor(colorNuevo) {
    color = colorNuevo
  }
  method cambiarPeso(pesoNuevo) {
    peso = pesoNuevo
  }
}
object arito {
  method color() = celeste
  method material() =  cobre
  method peso() = 180 
}
object naranja {
  method esFuerte() = true
}
object banquito {
  var color = naranja
  method color() = color

  method cambiarColor(colorNuevo) {
    color = colorNuevo
  } 
  method material() = madera
  method peso() = 1700
}
object cajita{
  method color() = rojo
  method material() = cobre

  method objetoDentro() = objetoDentro
  var objetoDentro = pelota
  method cambiarObjeto(objetoNuevo) {
    objetoDentro = objetoNuevo
  }
  
  method peso() = 400 + objetoDentro.peso()
}
