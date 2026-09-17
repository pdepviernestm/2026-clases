// arbitro.quienGanaEntre(equipo1,equipo2)
object arbitro {
    method quienGanaEntre(equipo1,equipo2) {
        
        if (equipo1.goles(equipo2) < equipo2.goles(equipo1)) {
            return equipo1
        }
        else {
            return equipo2
        }
    } 
}
object pdepClub{
    method goles(otroEquipo){
        return 3
    }
    method dinero() = 3000000
}
object river{
    var dineroEnCaja = 1000000
    var cantidadDeSocios = 10000000
    method dinero() = dineroEnCaja + cantidadDeSocios * 13000
    method goles(otroEquipo) = self.dinero() - otroEquipo.dinero()
    method hacerRecital(recital){
        dineroEnCaja = dineroEnCaja + recital.cuantoRecauda() 
    }
    method agregarSocio(){
        cantidadDeSocios += 1
    }
    method capacidadOfensiva(){
        return self.dinero()/1000000
    }
}
object lali{
    method cuantoRecauda()= 5000000
}
object mana{
    method cuantoRecauda()= 3500000
}
object mcr{
    method cuantoRecauda()= 500000000000
}
object karolG {
    method cuantoRecauda() {
      return lali.cuantoRecauda()
    }
}