class Persona{
    var recursos = 20
    var edad

    method recursos() = recursos
    method ganarMonedas(cantidad){recursos = recursos + cantidad}
    method gastarMonedas(cantidad){recursos = 0.max(cantidad - recursos)}
    method cumplirAnios(){edad = edad + 1}
    method esDestacado() = edad.between(18, 65) and recursos > 30
}

class Muralla{
    const longitud

    method valor() = longitud * 10
}

class Museo{
    const superficie
    const indiceImportancia

    method valor() = superficie * indiceImportancia
}

class Planeta{
    const property habitantes = []
    const construcciones = []

    method destacados() = habitantes.filter({p => p.esDestacado()})
    method masRico() = habitantes.max({x => x.recursos()})

    method delegacionDiplomatica(){
        const delegacion = self.destacados() + [self.masRico()]

        return delegacion.asSet().asList() 
    }
      
    

    method esValioso(){
        const valorTotal = construcciones.sum({c => c.valor()})
        return valorTotal > 100 
    }
}