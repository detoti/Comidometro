//
//  Refeicao.swift
//  big-banana
//
//  Created by André Toti on 29/11/22.
//

import UIKit

class Refeicao: NSObject, NSCoding {
 

    //MARK: - Atributos
    let nome: String
    let felicidade: Int
    var itens: Array<Item> = []
    
    //MARK: - Init
    init(nome: String, felicidade: Int, itens: [Item] = []){
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    //MARK: - NSCoding
    
    func encode(with coder: NSCoder) {
        coder.encode(nome, forKey: "nome")
        coder.encode(felicidade, forKey: "felicidade")
        coder.encode(itens, forKey: "itens")
    }
    
    required init?(coder: NSCoder) {
        nome = coder.decodeObject(forKey: "nome") as! String
        felicidade = coder.decodeInteger(forKey: "felicidade")
        itens = coder.decodeObject(forKey: "itens") as! Array<Item>
        
    }
    
    
    //MARK: - Metodos
    func totalDeCalorias() -> Double{
        var total = 0.0
        
        for item in itens{
            total += item.calorias
        }
        return total
    }
    
    func detalhes() -> String {
        var mensagem = "Felicidade \(felicidade)"
        for item in itens {
            mensagem += ", \(item.nome) - calorias: \(item.calorias)"
        }
        return mensagem
    }
}

