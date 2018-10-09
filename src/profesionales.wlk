import universidades.*


// esta clase está completa, no necesita nada más
class Universidad{
	var universidad
	var honorarios
	method pciaUniv() { return universidad}
	method pciaUniv(univ) {universidad = univ}
	method honorariosRecomendados () {return honorarios}
	method honorariosRecomendados (honor) {honorarios = honor}
}





class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { 
		return #{universidad.getProvincia()} 
		
		}
/*	method provinciasDondePuedeTrabajar() { 
		return #{self.pciaUniv()}
pueden trabajar solamente en la provincia donde está la universidad,*/
	method honorariosPorHora() { return universidades.honorariosRecomendados() } // los honorarios son los que recomienda la universidad.
	
}                    
// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var honorarios
	var provincias = #{}
	
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
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
	
	method honorariosPorHora(){
		return honorarios
	}
	method provinciaDondePuedeTRabajar(){
		return provincias
	}
	
}
