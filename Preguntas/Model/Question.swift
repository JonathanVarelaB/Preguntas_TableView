//
//  Question.swift
//  Preguntas
//
//  Created by Jonathan Varela on 5/12/18.
//  Copyright © 2018 Jonathan Varela. All rights reserved.
//

import Foundation

class Question{
    
    var texto: String
    var respuesta: Bool
    
    init(pregunta: String, respuestaCorrecta: Bool) {
        self.texto = pregunta
        self.respuesta = respuestaCorrecta
    }
}
