//
//  Model.swift
//  Signature App
//
//  Created by Razan on 26/03/1443 AH.
//

import Foundation

struct Juice {
    var title: String
    var description: String
    var calories: Int
    var Image: String
}
struct Payment {
    var cardNumber: String
    var CardName: String
    var ExpDate: String
}
//struct Order {
//    var item : Juice?
//    var qty : Int
//}

class Signture {
    var products : [Juice] = []
    var wallet: [Payment] = []
    
//    var orders = [Order]()
    
//    init(products: Juice, orders: Order) {
//        self.products = [products]
//        self.orders = [orders]
//    }
}


