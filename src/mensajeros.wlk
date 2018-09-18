//mensajeros

object roberto {
	var pesoMensajero
	var property vehiculo = bicicleta
	method pesoMensajero(cuanto) {pesoMensajero = cuanto}
	method peso() {
		return pesoMensajero + vehiculo.peso()
	}
	method puedeLlamar() {return false}
}

object chuckNorris {
	const pesoMensajero = 900
	method peso() {return pesoMensajero}
	method puedeLlamar() {return true}
}

object neo {
	var property tieneCredito = true
	const pesoMensajero = 0
	method peso() {return pesoMensajero}
	method puedeLlamar() {return tieneCredito}
}

//vehiculos

object bicicleta {
	method peso() = 8
}

object camion {
	var property nroAcoplados = 1
	method peso() {
		return nroAcoplados * 500
	}
}

//destinos

object puenteBrooklyn {
	method dejaPasarA(mensajero) = mensajero.peso() <= 1000
}

object matrix {
	method dejaPasarA(mensajero) = mensajero.puedeLlamar()
}


object paquete {
	var property estaPago = true
	var property destino = puenteBrooklyn
	method puedeSerEnviadoPor(mensajero) = destino.dejaPasarA(mensajero) and estaPago
}


//mensajeria

object mensajeria {
	var empleados = []
	method nomina() {return empleados}
	method contratar(alguien) {
		empleados.add(alguien)
 	}
 	method despedir(alguien) {
 		empleados.remove(alguien)
 	}
 	method despedirATodos() {
 		empleados = []
 	}
 	method esGrande() = empleados.size() > 2
 	method puedePrimerEmpleado() = paquete.puedeSerEnviadoPor(empleados.first())
 	method pesoUltimoEmpleado() {return empleados.last().peso()}
}
