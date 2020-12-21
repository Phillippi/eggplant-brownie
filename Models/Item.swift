//
//  Item.swift
//  Eggplant-brownie
//
//  Created by Phillippi Areias Aguiar on 12/18/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class Item: NSObject {

        let nome: String
        let calorias: Double
        
        init(nome: String, calorias: Double) {
            self.nome = nome
            self.calorias = calorias
        }
    }
