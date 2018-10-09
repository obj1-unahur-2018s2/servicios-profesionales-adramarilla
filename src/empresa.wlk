import universidades.*

class Empresa {
	const profesionales = #{}
	var honorarioDeReferencia
	
	
	method setHonorarioDeReferencia(_honorarioDeReferencia) {
		honorarioDeReferencia = _honorarioDeReferencia
	}
	
	method agregarProfesionales(_profesionales){
		profesionales.addAll(_profesionales)
	}
	
	method agregarProfesional(_profesional){
		profesionales.add(_profesional)
	}
	
	//method profesionalesCaros() { conjuntoProfesionales.any({prof=> prof.honorariosPorHora() > honorarioRef})} Echo por mi
	
	method profesionalesCaros() {
		return profesionales.filter({prof=> prof.honorariosPorHora() > honorarioDeReferencia})
	}
	
	/*
	 *     method setUniversidadesFormadoras(universidad) { univFormadoras.add(universidad)} 
	method universidadesFormadoras() { return univFormadoras.asSet()} Como lo hice yo
	 */
	 
	 method universidadesFormadoras() {
	 	return profesionales.map({p => p.universidad()})
	 }
	 
	 method profesionalMasBarato(){
	 	return profesionales.min({p =>p.honorariosPorHora()})
	 }
	 
	 /*	method SetpciaCubierta(pcia) { provincia = pcia
	  * 
	  * method pciaCubierta () { 
		conjuntoProfesionales.any({prof=>prof.provinciasDondePuedeTrabajar()}).contains(provincia) {return true}
		else {return false} 
	} como lo hice yo */
	
	

	method provinciaCubierta (_provincia) { 
		return profesionales.any({p => p.provinciasDondePuedeTrabajar().contains(_provincia)})
	}
	
	method profesionalesPorUniversidad(_universidad){
		return profesionales.count({p => p.universidad() == _universidad})
	}

	method profesionalPocoAtractivo (_profesional){
		_profesional.provinciasDondePuedeTrabajar()
		.all({prov => profesionales
		.any({p => p.provinciasDondePuedeTrabajar().contains(prov)
		 and p.honorariosPorHora() < _profesional.honorariosPorHora()}))}
	}	
/*Otra forma de hacer profesionaPocoAtractivo
 * 
 * method profesionalMasBaratoQue(_provincia, _honorario){
 *	return profesionales.any{(p => p.provinciasDondePuedeTrabajar().contains(_provincia) and
 * 	p.honorariosPorHora() <  _honorarios })
 * }
 * 
 * method profesionalPocoAtractivo (_profesional){
		return _profesional.provinciasDondePuedeTrabajar()
		.all({prov => profesionales
		.any({p => p.provinciasDondePuedeTrabajar().contains(prov)
		 and p.honorariosPorHora() < _profesional.honorariosPorHora()})
	})
	}
  method profesionalPocoAtractivo2 (_profesional){
		return _profesional.provinciasDondePuedeTrabajar()
		.all({prov => self.profesionalMasBaratoQue (prov, _profesional.honorariosPorHora())
		})
	

	}
	
	
 * 
 */



