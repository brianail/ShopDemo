//
//  Product.swift
//  ShopDemo
//
//  Created by Brian Ail on 13/01/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Sueter verde", image: "clothing2", price: 46),
                   Product(name: "Vestido marsala", image: "clothing3", price: 66),
                   Product(name: "Touca laranja lã", image: "clothing4", price: 46),
                   Product(name: "Vestido azul", image: "clothing5", price: 126),
                   Product(name: "Blazer vintage", image: "clothing6", price: 99),
                   Product(name: "Vestido floral", image: "clothing7", price: 59)]
