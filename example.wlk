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
  method puntosDeArmadura(){
    return 10
  }
}

class Escudo{
  method puntosDeArmadura(){
    return 5 
  }
}

class Gladiador{
  var vida = 100

  method perderVida()

  method atacar()

  method defender()
}