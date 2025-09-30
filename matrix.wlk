/*
personas:
    neo
    merfeo
    trinity
            <- accion - baja, posibilidad de rotoranr a la nave
            <- polomorfismo
                energia-vitalidad -es elegido

            <- objetos
                acciones - toma las acciones en metodos.

    nave
        pasajeros->
            mayor vitalidad
            equilibrio en vitalidad
                <- es generado cuando ninguno de los pasajeros tiene MAS QUE el doble de vitalidad que cualquier otro pasajero
                    vitalidad->[1,1,1,1,1,4] <- false

                        getVitalidad.filter({n => ! getVitalidad.contains(n*2)).isEmpty()     
        CHOCA>

*/
object neo {
    var energia =100
    method saltar() {
        energia = energia/2
    } 
    method vitalidad() = energia.div(10)
    method esElegido() =true 
}
object morfeo {
    var vitalidad=8
    method esElegido() =false
    method vitalidad() =vitalidad
    method saltar() {
        vitalidad-=1
    }   

}
object trinity {
    method vitalidad() =0
    method saltar() {}
    method esElegido() =false  
}
