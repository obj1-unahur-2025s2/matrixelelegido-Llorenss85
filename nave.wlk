import matrix.*

object nave {
    const pasajeros=[]

    method getPasajeros() =pasajeros 
    method ingresarPasajero(unPasajero) {
      pasajeros.add(unPasajero)
    }


    method cantidadDePasajeros()=pasajeros.size()
    method vitalidadDeLosPasajeros() = pasajeros.map({p=> p.vitalidad()})
    method vitalidadMaximaDeUnPasajero() =self.vitalidadDeLosPasajeros().max() 
    method pasajeroConMayorVitalidad() =pasajeros.find({p=> p.vitalidad() ==self.vitalidadMaximaDeUnPasajero()}) 
    //equilibrio
    method pasajerosConDobleVitalidad() =self.vitalidadDeLosPasajeros().filter({f=> self.vitalidadDeLosPasajeros().contains(f/2) and f !=0})
    method estaEquilibrado() = self.pasajerosConDobleVitalidad().isEmpty() 
    //elegido
    method pasajerosNoElegidos() =pasajeros.filter({p=> !p.esElegido()}) 
    method elegidoEstaDentro() =pasajeros.any({p=> p.esElegido()}) 

    method choca() {
      pasajeros.forEach({p=> p.saltar()})
      pasajeros.clear()
    }
    method acelerar() {
      self.pasajerosNoElegidos().forEach({p => p.saltar()})
    }
}
