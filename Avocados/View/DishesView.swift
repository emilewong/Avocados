//
//  DishesView.swift
//  Avocados
//
//  Created by Emile Wong on 29/6/2021.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            // 1ST COLUMN
            VStack(alignment: .leading, spacing: 4) {
                HStack{
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                
                Divider()
                
                HStack{
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                }
                
                Divider()
                
                HStack{
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                }
                
                Divider()
                
                HStack{
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                }
            }
            
            // 2ND COLUMN
            VStack(alignment: .center, spacing: 8){
                HStack{
                    Divider()
                }
                
                Image(systemName: "heart.circle.fill")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.medium)
                HStack{
                    Divider()
                }
            }
            .padding(6)
            
            // 3RD COLUMN
            VStack(alignment: .trailing, spacing: 4) {
                HStack{
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }
                
                Divider()
                
                HStack{
                    Text("Sandwiches")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }
                
                Divider()
                
                HStack{
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }
                
                Divider()
                
                HStack{
                    Text("Smoothies")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }
            }
        } //: HSTACK
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 300)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 410, height: 280))
    }
}
