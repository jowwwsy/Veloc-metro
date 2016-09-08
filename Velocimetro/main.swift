//
//  main.swift
//  Velocimetro
//
//  Created by Joselyne Banegas on 08/09/16.
//  Copyright © 2016 Joselyne Banegas. All rights reserved.
//

import Foundation


// Desligado, valocidade baixa, velocidade media, velocidade alta

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
    
    func cambioDeVelocidad() -> ( atual : Int, velocidadEnCadena: String){
        var status = ""
        let atual = velocidad.rawValue
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            status = "Apagado"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            status = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            status = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = .Apagado
            status = "Velocidad Alta"
        }
        return (atual, status)
    }
    
}

// interaçao com 20 numeros


let auto = Auto()
for i in 1...20 {
    let result = auto.cambioDeVelocidad()
    print("\(i). \(result.atual), \(result.velocidadEnCadena)")
}