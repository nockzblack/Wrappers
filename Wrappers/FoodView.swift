//
//  FoodView.swift
//  Wrappers
//
//  Created by Fernando's Mac on 04/04/22.
//

import SwiftUI

struct Dish: Identifiable {
    var id: Int
    var name: String
    var imageName: String
    
}

struct FoodView: View {
    
    @State var dishLisht = [
        Dish(id:0, name: "Pizza", imageName: "pizza"),
        Dish(id:1, name: "Hamburguesa", imageName: "hamburguesa"),
        Dish(id:2, name: "Helado", imageName: "copa"),
        Dish(id:3, name: "Camarones", imageName: "camarones"),
        Dish(id:4, name: "Soda italiana", imageName: "soda"),
        Dish(id:5, name: "Sushi", imageName: "pizza")
    ]
    
    @State private var showDetails = true
    @State private var myColorScheme: ColorScheme = .light
    @State private var isLight = true
    
    
    
    var body: some View {
        NavigationView {
            List(dishLisht) { dish in
                HStack {
                    Image(dish.imageName)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(10.0)
                    
                    if self.showDetails {
                        Text(dish.name)
                            .foregroundColor(.primary)
                    }
                }
            }
            
            .navigationTitle("Restaurant Menu")
            .navigationBarItems(leading: TextToggleButton(showDetails: $showDetails), trailing: Button(action: {toggleColorScheme()}) {
                Text(self.isLight ? "Dark Mode" : "Light Mode")
            })
        }
        .foregroundColor(.primary)
        .colorScheme(myColorScheme)
    }
    
    func toggleColorScheme() {
        myColorScheme = (myColorScheme == .dark) ? .light : .dark
        isLight.toggle()
    }
    
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}
