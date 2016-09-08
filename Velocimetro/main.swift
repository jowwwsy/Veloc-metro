//
//  main.swift
//  Velocimetro
//
//  Created by Joselyne Banegas on 08/09/16.
//  Copyright © 2016 Joselyne Banegas. All rights reserved.
//

import Foundation


enum Velocidades:Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad:Velocidades
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        var legenda = ""
        let actual = velocidad.rawValue
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            legenda = "Apagado"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            legenda = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            legenda = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = .Apagado
            legenda = "Velocidad Alta"
        }
        return (actual, legenda)
    }
    
}

let auto = Auto()
for i in 1...20 {
    let result = auto.cambioDeVelocidad()
    print("\(i). \(result.actual), \(result.velocidadEnCadena)")
}