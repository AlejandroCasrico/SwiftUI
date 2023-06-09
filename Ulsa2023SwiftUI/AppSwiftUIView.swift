//
//  AppSwiftUIView.swift
//  Ulsa2023SwiftUI
//
//  Created by Alejandro Casillas on 31/05/23.
//

import SwiftUI
enum ActionApp: Identifiable {
    case opcion1
    case opcion2
    
    var id: Int {
        hashValue
    }
}
struct Fruits {
    let name: String
    let iconName: String
}
struct AppSwiftUIView: View {
    @State private var showingActionSheet = false
     @State private var selectedFruit: Fruit?
    @State private var selectedAction: ActionApp?

     let fruits = [
         Fruit(name: "Orange", iconName: "scissors"),
         Fruit(name: "Strawberry", iconName: "wineglass"),
         Fruit(name: "Apple", iconName: "ipad"),
         Fruit(name: "Pineapple", iconName: "headphones"),
         Fruit(name: "Banana", iconName: "camera"),
         Fruit(name: "Mango", iconName: "book.fill"),
         Fruit(name: "Kiwi", iconName: "pencil.circle.fill"),
         Fruit(name: "Blueberry", iconName: "pill.fill"),
         Fruit(name: "Raspberry", iconName: "hammer.fill"),
         Fruit(name: "Grapes", iconName: "megaphone.fill"),
         Fruit(name: "Pear", iconName: "wifi"),
         Fruit(name: "Peach", iconName: "clock.fill"),
         Fruit(name: "Cherry", iconName: "bell.fill"),
         Fruit(name: "Plum", iconName: "trash.fill"),
         Fruit(name: "Lemon", iconName: "film.fill"),
         Fruit(name: "Avocado", iconName: "safari.fill")
     ]

     var body: some View {
         VStack {
             Text("Fruit Market")
                 .font(.largeTitle)
                 .fontWeight(.bold)
                 .padding(.top, 20)

             ScrollView {
                 VStack {
                     ForEach(fruits, id: \.name) { fruit in
                         HStack {
                             Image(systemName: fruit.iconName)
                                 .foregroundColor(.blue)
                                 .font(.title)
                             Text(fruit.name)
                                 .font(.title)
                                 .padding(.leading, 10)
                         }
                         .padding()
                         .onTapGesture {
                             selectedFruit = fruit
                             showingActionSheet = true
                         }
                     }
                 }
             }
         }
         .actionSheet(isPresented: $showingActionSheet) {
             if let selectedFruit = selectedFruit {
                 return ActionSheet(
                     title: Text("Options"),
                     message: Text("Select an option for \(selectedFruit.name)"),
                     buttons: [
                         .default(Text("Buy"), action: {
                             selectedAction = .opcion1
                             print("Has comprado \(selectedFruit.name)")
                         }),
                         .default(Text("Add to the car"), action: {
                             selectedAction = .opcion2
                             print("Has agregado \(selectedFruit.name) al carrito")
                         }),
                         .cancel()
                     ]
                 )
             } else {
                 return ActionSheet(
                     title: Text("Opciones"),
                     message: Text("Choose a fruit"),
                     buttons: [
                        .cancel()
                     ]
                 )
             }
         }
         .alert(item: $selectedAction) { action in
                     switch action {
                     case .opcion1:
                         return Alert(title: Text("Su compra fue completada con exito"))
                     case .opcion2:
                         return Alert(title: Text("Se guardo en el carrito"))
                     }
                 }
         .padding()
        
     }
  
    }
    
    struct AppSwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            AppSwiftUIView()
        }
    }

