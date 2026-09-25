import pepita.*


object configuracionTeclas {
  method configurarHabilidad() {
    keyboard.c().onPressDo({

        const comida = game.uniqueCollider(pepita)
        pepita.comer(comida)
        game.removeVisual(comida)
    })
  }
  
}