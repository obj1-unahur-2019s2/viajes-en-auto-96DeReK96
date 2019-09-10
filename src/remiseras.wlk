/*
 * definir remiseras y clientes.
 */

object ludmila {
	method precioPorKilometro() {
		return 18
	}
}

object anaMaria {
	var economicamenteEstable = true
	method precioPorKilometro() {
		return if(economicamenteEstable) {
			30
		} else {
			25
		}
		
	}
	method estaEstable() {
		economicamenteEstable = true
	}
	method noEstaEstable() {
		economicamenteEstable = false
	}
}

object teresa {
	var property precioXKm = 22
	method precioPorKilometro() {
		return precioXKm
	}
	method cambiarPrecioXKm(precio) {
		precioXKm = precio
	}
}

object lucia {
	var property reemplazaActual
	
	method reemplazaA(remisera) {
		reemplazaActual = remisera
	}
	method reemplazoActual() {
		return reemplazaActual
	}
	method precioPorKilometro() {
		return reemplazaActual.precioPorKilometro()
	}
	
}


object roxana {
	method precioDelViaje(cliente, kms) {
		return cliente.precioPorKilometro() * kms
	}
}

object gabriela {
	method precioDelViaje (cliente, kms) {
		return ((cliente.precioPorKilometro() * kms) * 1.20)
	}
}

object mariela {
	method precioDelViaje (cliente, kms) {
		return (cliente.precioPorKilometro() * kms).max(50)
	}
}

object juana {
	method precioDelViaje (cliente, kms) {
		return if (kms < 8) {
			100
		} else {
			200
		}
	}
}

object melina {
	var
}
