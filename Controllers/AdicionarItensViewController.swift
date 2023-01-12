//
//  AdicionarItensViewController.swift
//  big-banana
//
//  Created by André Toti on 06/12/22.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item: Item)
}

class AdicionarItensViewController: UIViewController {
    
  // MARK: - IBOutlets
      
    @IBOutlet weak var nomeAlimentoTextField: UITextField?
            
    @IBOutlet weak var caloriasTextField: UITextField?
    
    // MARK: - Atibutos
    
    var delegate: AdicionaItensDelegate?
    
    init(delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBAction
    
        @IBAction func adicionarItem(_ sender: Any) {
            
            guard let nome = nomeAlimentoTextField?.text, let calorias = caloriasTextField?.text else {
                return
            }
            
            if let numeroDeCalorias = Double(calorias) {
                let item = Item(nome: nome, calorias: numeroDeCalorias)
                delegate?.add(item)
                navigationController?.popViewController(animated: true)
            }
    }
}
