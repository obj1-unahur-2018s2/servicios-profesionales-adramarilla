import universidades.*


// esta clase está completa, no necesita nada más
class Universidad{
	var universidad
	var honorarios
	method setHonorariosSugeridos(_honorariosSugerido){
		honorarios = _honorariosSugerido
	}
	method setProvincia(_provincias){
		universidad = _provincias
	}
	method getProvincia() {return universidad}
	method getHonorariosSugerido() {return honorarios}
	
}

class Profesional { //class que van a heredar todo lo de esta class con inherits
	var universidad 
	
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar()
	
	method honorariosPorHora()
	
	method trabajasEn(_provincia){
		return self.provinciasDondePuedeTrabajar().contains(_provincia)
	}
	
	
}


class ProfesionalAsociado  inherits Profesional{
	
	override method provinciasDondePuedeTrabajar() {  //declarar que esta sobreescribiendo el metodo que le das, que este en la superclass
		return #{"Entre Ríos", "Corrientes", "Santa Fe"}
	}
	
	override method honorariosPorHora() { return 3000 }
}


class ProfesionalVinculado inherits Profesional {
	
	override method provinciasDondePuedeTrabajar() { 
		return #{universidad.getProvincia()} 
		
		}

	override method honorariosPorHora() { return universidad.honorariosRecomendados() } // los honorarios son los que recomienda la universidad.
	
}                    


class ProfesionalLibre inherits Profesional{
	
	var honorarios
	var provincias = #{}
	
	
	
	method addProvincias(_provincia) {
		provincias.addAll(_provincia)
	}
	method addProvincia(_provincia) {
		provincias.add(_provincia)
	}
	
	method setHonorarios(_honorarios){
		honorarios = _honorarios
	}
	method removerProvincia (_provincia){
		provincias.remove(_provincia)
	}
	
	override method honorariosPorHora(){
		return honorarios
	}
	override method provinciasDondePuedeTrabajar(){
		return provincias
	}
	
}
