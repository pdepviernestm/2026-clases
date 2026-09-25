import extras.silvestre
object pepita {
	var energia = 100
	var property position = game.at(1, 1)
	
	method image() = if(self.position() == silvestre.position()) "pepita-gris.png" else "pepita.png"
	
	method estaCansada() = energia < 20
	
	method volar(metros) {
		energia -= metros * 10
	}
	
	method comer(comida) {
		energia += comida.energiaQueOtorga()
	}

	//game.onTick(800, "gravedad", {bloque accion})
}

object alpiste {
	method energiaQueOtorga() = 5

	method image() = "alpiste.png"
	var property position = game.at(4,2)
}

object manzana {
	var madurez = 1
	var property position = game.at(4, 4)

	method image() = "manzana.png"
	method energiaQueOtorga() = 0.8 * madurez
	
	method madurar() {
		madurez += 10
	}
}