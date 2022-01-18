//
//  CartView.swift
//  ShopDemo
//
//  Created by Brian Ail on 14/01/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0{
                ForEach(cartManager.products, id:\.id) {
                    product in ProductRow(product: product)
                }
                
                HStack{
                    Text("Total")
                        .bold()
                    
                    Spacer()
                    
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
                PaymentButton(action: {} )
                    .padding()
                
            } else {
                Text("Seu carrinho está vazio")
                
            }
        }
        .navigationTitle(Text("Meu Carrinho"))
                           
        
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
        
    }
}
