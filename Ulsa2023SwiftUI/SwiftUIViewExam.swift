//
//  SwiftUIViewExam.swift
//  Ulsa2023SwiftUI
//
//  Created by Alejandro Casillas on 29/05/23.
//

import SwiftUI
struct Fruit{
    let name: String
    let iconName: String
}
struct Sports{
    let deporte: String
    let iconName:String
}
struct SwiftUIViewExam: View {
    let fruits = [
        Fruit(name: "orange", iconName: "heart.fill"),
        Fruit(name: "strawberry", iconName: "star.fill"),
        Fruit(name: "Apple", iconName: "cart.fill"),
        Fruit(name: "Pineapple", iconName: "flag.fill"),
        Fruit(name: "banana", iconName: "music.note"),
        Fruit(name: "mango", iconName: "bookmark.fill"),
        Fruit(name: "kiwi", iconName: "bell.fill")
        
    ]
    let sports = [
        Sports(deporte: "futbol", iconName:"cloud.fill"),
        Sports(deporte: "tennis", iconName:"magnifyingglass"),
        Sports(deporte: "Atletismo", iconName:"camera.on.rectangle.fill"),
        Sports(deporte: "natacion", iconName:"cloud.sun.fill"),
        Sports(deporte: "volleyball", iconName:"doc.text.fill"),
        Sports(deporte: "basquetball", iconName:"person.crop.circle.fill"),
        Sports(deporte: "danza", iconName:"globe")
    ]
    var body: some View {
        List {
             Section(header: Text("Fruits")) {
                 ForEach(fruits, id: \.name) { fruit in
                     HStack {
                         Image(systemName: fruit.iconName)
                         Text(fruit.name)
                     }
                 }
             }
             
             Section(header: Text("Sports")) {
                 ForEach(sports, id: \.deporte) { sport in
                     HStack {
                         Image(systemName: sport.iconName)
                         Text(sport.deporte)
                     }
                 }
             }
         }
    }
}

struct SwiftUIViewExam_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewExam()
    }
}
