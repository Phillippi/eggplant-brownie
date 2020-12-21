//
//  Refeicao.swift
//  Eggplant-brownie
//
//  Created by Phillippi Areias Aguiar on 12/18/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class Refeicao: NSObject {

        let nome: String
        let felicidade: Int
        var itens: Array<Item> = []
        
    init(nome: String, felicidade: Int, itens: [Item] = []) {
            self.nome = nome
            self.felicidade = felicidade
            self.itens = itens
            
            //metodos
        
        func totalDeCalorias() -> Double {
            var total = 0.0
            for item in itens {
                total += item.calorias
            }
            return total
        }
    }
    func detalhes() -> String {
        var mensagem = "Felicidade: \(felicidade)"
        
        for item in itens {
            mensagem += ", \(item.nome) - calorias: \(item.calorias)"
        }
        return mensagem
    }
}
