class ArmaDeFilo {
  method filo() {
    return 1
  }

  method longitudDeArma()
}

class Daga inherits ArmaDeFilo{

  method valorDeAtaque(){
    return self.filo() * self.longitudDeArma()
  }

  override method longitudDeArma(){
    return 50
  }
}

class Espada inherits ArmaDeFilo{
  
  method valorDeAtaque(){
    return self.filo() * self.longitudDeArma()
  }

  override method longitudDeArma(){
    return 120
  }
}

class Hacha inherits ArmaDeFilo{
  
  method valorDeAtaque(){
    return self.filo() * self.longitudDeArma()
  }

  override method longitudDeArma(){
    return 90
  }
}

class ArmaContundente {

  method valorDeAtaque()
}

class Maza inherits ArmaContundente{
  override method valorDeAtaque() {
    return self.pesoDeArma()
  }

  method pesoDeArma() {
    return 2500
  }
}

class Martillo inherits ArmaContundente{
  override method valorDeAtaque(){
    return self.pesoDeArma()
  }

  method pesoDeArma() {
    return 1500
  }
}

class Casco {
  method puntosDeArmadura(luchador){
    return 10
  }
}

class Escudo{
  method puntosDeArmadura(luchador){
    return 5 + luchador.destreza() * 0.1
  }
}

class Gladiador{
  var vida = 100
  var armaActual = Espada
  

  method perderVida()

  method destreza(){
    return 15
  }

  method atacar()

  method defender()
}

class Mirmillon inherits Gladiador{
  const armero = [Espada, Daga, Hacha]

  
}

class Dimachaerus inherits Gladiador{
  const armero = [Espada, Daga, Hacha, Maza, Martillo]
  var destreza 

  method fuerza(){
    return 10
  }
  
  override method destreza() {
    return destreza
  }
}