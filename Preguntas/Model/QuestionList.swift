//
//  QuestionList.swift
//  Preguntas
//
//  Created by Jonathan Varela on 5/12/18.
//  Copyright © 2018 Jonathan Varela. All rights reserved.
//

import Foundation

class QuestionList{
    
    var preguntas: [Question]
    
    init(){
        self.preguntas = []
        self.agregarPregunta(pregunta: "Jupiter tiene anillos?", respuesta: true)
        self.agregarPregunta(pregunta: "La tierra es rectangular?", respuesta: false)
        self.agregarPregunta(pregunta: "La luna es redonda?", respuesta: true)
        self.agregarPregunta(pregunta: "La tierra es redonda?", respuesta: true)
        self.agregarPregunta(pregunta: "La luna es plana?", respuesta: false)
        self.agregarPregunta(pregunta: "Jupiter es redondo?", respuesta: true)
        self.agregarPregunta(pregunta: "La tierra es cuadrada?", respuesta: false)
        self.agregarPregunta(pregunta: "La luna es cuadrada?", respuesta: false)
        self.agregarPregunta(pregunta: "Jupiter es plano?", respuesta: false)
        self.agregarPregunta(pregunta: "Marte es rojo?", respuesta: true)
        self.agregarPregunta(pregunta: "La luna es cuadrada?", respuesta: false)
    }
    
    func agregarPregunta(pregunta: String, respuesta: Bool){
        self.preguntas.append(Question(pregunta: pregunta, respuestaCorrecta: respuesta))
    }
    
    func cantidadPreguntas() -> Int{
        return self.preguntas.count
    }
}
