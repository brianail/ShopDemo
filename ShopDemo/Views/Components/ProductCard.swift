//
//  ProductCard.swift
//  ShopDemo
//
//  Created by Brian Ail on 14/01/22.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartaManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(30)
                    .frame(width:180)
                    .scaledToFit()
                
                VStack (alignment: .leading){
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            
            Button {
                cartaManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}


struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
