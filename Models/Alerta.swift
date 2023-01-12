//
//  Alerta.swift
//  big-banana
//
//  Created by André Toti on 12/12/22.
//

import UIKit

class Alerta {
    
    let controller: UIViewController
    
    init(controller: UIViewController){
        self.controller = controller
    }
    
    func exibe(titulo: String = "Atenção", mensagem: String){
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alerta.addAction(ok)
        
        controller.present(alerta, animated: true, completion: nil)
    }
    }

