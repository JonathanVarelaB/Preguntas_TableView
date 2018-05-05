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
    var divisionProgreso: String = "/"
    var banderaRespondio: Bool = false
    
    var respuestas: [Bool] = [
        false, false, false, false, false, false, false, false, false, false,
        false, false, false, false, false, false, false, false, false, false
    ]
    var preguntas = [
        [ "pregunta1", false ],
        [ "pregunta2", false ],
        [ "pregunta3", false ],
        [ "pregunta4", false ],
        [ "pregunta5", false ],
        [ "pregunta6", false ],
        [ "pregunta7", false ],
        [ "pregunta8", false ],
        [ "pregunta9", false ],
        [ "pregunta10", false ],
        [ "pregunta11", false ],
        [ "pregunta12", false ],
        [ "pregunta13", false ],
        [ "pregunta14", false ],
        [ "pregunta15", false ],
        [ "pregunta16", false ],
        [ "pregunta17", false ],
        [ "pregunta18", false ],
        [ "pregunta19", false ],
        [ "pregunta20", false ]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cantidadPreguntas = self.preguntas.count
        self.actualizarProgreso()
        self.actualizarPregunta()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func respuesta(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            self.respuestas[self.indexPreguntaActual] = true
        default:
            self.respuestas[self.indexPreguntaActual] = false
        }
        self.banderaRespondio = true
    }
    
    @IBAction func siguiente(_ sender: UIButton) {
        if self.indexPreguntaActual + 1 <= self.cantidadPreguntas{
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
        }
    }
    
    func actualizarProgreso () {
        self.progreso.text = "\(self.indexPreguntaActual + 1) \(self.divisionProgreso) \(self.cantidadPreguntas)"
    }
    
    func actualizarPregunta () {
        self.pregunta.text = self.preguntas[self.indexPreguntaActual][0] as! String
    }
    
}
