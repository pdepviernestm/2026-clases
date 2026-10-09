
class deuda {
  var dineroPrestado 
  var dineroDevuelto
  const interes

  method esCara() = dineroPrestado >10000
  method cuantosInteresesPago() = interes * (dineroPrestado - dineroDevuelto)
  method ejecturarAmortiacion(){
    dineroDevuelto += 1000
  }
}