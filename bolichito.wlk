import objetos.*
import personas.*
object bolichito {
    var mostrador = pelota
    var vidriera = placa

    method cambiarVidriera(cosaNueva){
        vidriera = cosaNueva
    }

    method cambiarMostrador(cosaNueva) {
        mostrador = cosaNueva
    }

    method verMostrador() = mostrador
    method verVidriera() = vidriera

    method esBrillante() = vidriera.material().esBrillante() and mostrador.material().esBrillante()
    method esMonocromatico() = vidriera.color() == mostrador.color()
    method esEquilibrado() = mostrador.peso() > vidriera.peso()
    method hayObjetoColor(unColor) = vidriera.color() == unColor or mostrador.color() == unColor
    method puedeOfrecerAlgoA(unaPersona) = unaPersona.leGusta(mostrador) || unaPersona.leGusta(vidriera)
}
