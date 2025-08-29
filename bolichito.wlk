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
    method puedeMejorar() = self.esEquilibrado() || self.esMonocromatico()
    method hayObjetoColor_YPuedeMejorar(unColor) = self.hayObjetoColor(unColor) && self.puedeMejorar()
    method puedeOfrecerAlgoA(unaPersona) = unaPersona.leGusta(mostrador) || unaPersona.leGusta(vidriera)
}
