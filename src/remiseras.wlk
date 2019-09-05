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
