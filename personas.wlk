/*
Rosa: le gustan las cosas que pesan 2 kilos (o sea 2000 gramos) o menos.
Estefanía: le gustan las cosas de colores fuertes.
Luisa: le gustan las cosas que sean de un material que brilla.
Juan: le gustan las cosas que, o bien son de un color que no es fuerte, o bien pesan 
entre 1200 y 1800 gramos.
*/
import objetos.*

object rosa {
    method leGusta(unaCosa) {
        return unaCosa.peso() <= 2000
    }
}
object estefania {
    method leGusta(unaCosa) = unaCosa.color().esFuerte()
}
object luisa {
    method leGusta(unaCosa) = unaCosa.material().esBrillante()
}
object juan {
    method leGusta(unaCosa) = not unaCosa.color().esFuerte() or unaCosa.peso().between(1200, 1800)
}