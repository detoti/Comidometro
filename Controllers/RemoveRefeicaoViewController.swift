//
//  RemoveRefeicaoViewController.swift
//  big-banana
//
//  Created by André Toti on 13/12/22.
//

import UIKit

class RemoveRefeicaoViewController {
    
    let controller: UIViewController
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe (_ refeicao: Refeicao, handler: @escaping (UIAlertAction) -> Void) {

            let alerta = UIAlertController(title: refeicao.nome, message: refeicao.detalhes(), preferredStyle: .alert)

            let botaoCancelar = UIAlertAction(title: "Ok", style: .cancel)

                alerta.addAction(botaoCancelar)

            let botaoRemover = UIAlertAction(title: "Remover", style: .destructive, handler: handler)
        
                alerta.addAction(botaoRemover)
    
        controller.present(alerta, animated: true, completion: nil)
}

}
