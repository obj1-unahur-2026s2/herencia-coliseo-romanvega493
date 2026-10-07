import wollok.mirror.*
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

object casco {
  method puntosDeArmadura(luchador){
    return 10
  }
}

object escudo{
  method puntosDeArmadura(luchador){
    return 5 + luchador.destreza() * 0.1
  }
}

class Gladiador{
  var vida = 100

  method perderVida(atacante) {
    vida = vida - (atacante.poderDeAtaque() - self.defensa())
  }

  method vida() {
    return vida
  }

  method defensa() 

  method destreza(){
    return 15
  }

  method atacar(gladiador) {
    gladiador.perderVida(self)
  }

  method poderDeAtaque()
  method defender()
}

class Mirmillon inherits Gladiador{
  var segundoObjeto = new escudo()
  const fuerza 

  method arma() {
    return new Espada()
  }
  method fuerza() {
    return fuerza
  }

  override method defensa(){
    return segundoObjeto.puntosDeArmadura(self) + self.destreza()
  }

  override method poderDeAtaque(){
    return self.fuerza() + self.arma().valorDeAtaque()
  }

  method cambiarAEscudo(){
    segundoObjeto = new escudo()
  }

  method cambiarACasco(){
    segundoObjeto = new casco()
  }

  method crearGrupoCon(gladiador){
    return new Grupo(nombre = "mirmillones", miembros = [self,gladiador])
  }
}

class Dimachaerus inherits Gladiador{
  const armero = [Espada, Daga, Hacha, Maza, Martillo]
  var destreza = 0

  override method poderDeAtaque(){
    return self.fuerza() + armero.size()
  }

  override method defensa() {
    return self.destreza() * 0.5
  }

  method fuerza(){
    return 10
  }

  override method destreza() {
    return destreza
  }

  override method atacar(atacante){
    super(atacante)
    destreza += 1
  }

  method crearGrupoCon(gladiador){
    return new Grupo(nombre = "D-" + self.fuerzaDeGrupo(gladiador), miembros = [self,gladiador])
  }

  method fuerzaDeGrupo(gladiador){
    return self.poderDeAtaque() + gladiador.PoderDeAtaque()
  }
}

class Grupo{

  const nombre
  var peleas = 0
  const miembros= []

  method agregarMiembro(gladiador){
    miembros.add(gladiador)
  }

  method sacarMiembro(gladiador){
    miembros.remove(gladiador)
  }

  method vivos(){
    return miembros.filter({g => g.vida() > 0})
  }

  method campeon(){
    return self.vivos()
  }
}