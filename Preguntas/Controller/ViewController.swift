//
//  ViewController.swift
//  Preguntas
//
//  Created by Jonathan Varela on 5/5/18.
//  Copyright © 2018 Jonathan Varela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progreso: UILabel!
    @IBOutlet weak var pregunta: UILabel!
    
    var indexPreguntaActual: Int = 0
    var cantidadPreguntas: Int = 0
    var banderaRespondio: Bool = false
    var respuesta: Bool = false
    var bancoPreguntas = QuestionList()
    var cantidadRespuestasCorrectas = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cantidadPreguntas = self.bancoPreguntas.cantidadPreguntas()
        self.actualizarProgreso()
        self.actualizarPregunta()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func respuesta(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            self.respuesta = true
        default:
            self.respuesta = false
        }
        self.banderaRespondio = true
    }
    
    func verificarRespuesta(){
        if self.respuesta == self.bancoPreguntas.preguntas[self.indexPreguntaActual].respuesta {
            self.cantidadRespuestasCorrectas += 1
        }
    }
    
    @IBAction func siguiente(_ sender: UIButton) {
        verificarRespuesta()
        if self.indexPreguntaActual + 1 < self.cantidadPreguntas{
            if self.banderaRespondio {
                self.indexPreguntaActual += 1
                self.actualizarProgreso()
                self.actualizarPregunta()
                self.banderaRespondio = false
            }
        }
        else {
            // presentar resultado
            print("presentar resultado")
            print(self.cantidadRespuestasCorrectas)
            self.progreso.text = ""
            self.pregunta.text = "\(self.cantidadRespuestasCorrectas) \(" respuestas correctas")"
        }
    }
    
    func actualizarProgreso () {
        self.progreso.text = "\(self.indexPreguntaActual + 1) \("/") \(self.cantidadPreguntas)"
    }
    
    func actualizarPregunta () {
        self.pregunta.text = self.bancoPreguntas.preguntas[self.indexPreguntaActual].texto
    }
    
}
