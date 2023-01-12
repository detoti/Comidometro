import UIKit



class Refeicao {
    
    //MARK: - Atributos
    var nome: String
    var felicidade: String
    var itens: Array<Item> = []
    
    //MARK: - Construtor
    init(nome: String, felicidade: String){
        self.nome = nome
        self.felicidade = felicidade
    }
    
    //MARK: - Metodos
    func totalDeCalorias() -> Double{
        var total = 0.0
        
        for item in itens{
            total += item.calorias
        }
        return total
    }
}

class Item {
    
    //MARK: - Atributos
    var nome: String
    var calorias: Double
    
    //MARK: - Construtor
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
