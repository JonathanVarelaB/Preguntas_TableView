//
//  RespuestasControllerViewController.swift
//  Preguntas
//
//  Created by Jonathan Varela on 5/12/18.
//  Copyright © 2018 Jonathan Varela. All rights reserved.
//

import UIKit

var bancoPreguntas = QuestionList()

class RespuestasControllerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bancoPreguntas.preguntas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "miCelda")
        cell.textLabel?.text = bancoPreguntas.preguntas[indexPath.row].texto
        if bancoPreguntas.preguntas[indexPath.row].respuesta {
            cell.detailTextLabel?.text = "SI"
        }
        else{
            cell.detailTextLabel?.text = "NO"
        }
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
