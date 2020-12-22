//
//  Item.swift
//  Eggplant-brownie
//
//  Created by Phillippi Areias Aguiar on 12/18/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class Item: NSObject, NSCoding {
    
        let nome: String
        let calorias: Double
        
        init(nome: String, calorias: Double) {
            self.nome = nome
            self.calorias = calorias
        }
    
    // MARK: NSCoding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(nome, forKey: "nome")
        aCoder.encode(calorias, forKey: "calorias")
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        nome = aDecoder.decodeObject(forKey: "nome") as! String
        calorias = aDecoder.decodeDouble(forKey: "calorias")
        
    }
    }
