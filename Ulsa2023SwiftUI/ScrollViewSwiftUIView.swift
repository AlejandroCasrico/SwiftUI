//
//  ScrollViewSwiftUIView.swift
//  Ulsa2023SwiftUI
//
//  Created by Alejandro Casillas on 30/05/23.
//

import SwiftUI

struct ScrollViewSwiftUIView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("First")
                    .frame(width: 200,
                           height: 200)
                    .background(Color.red)
                    .clipShape(Circle())
                Text("First")
                    .frame(width: 200,
                           height: 200)
                    .background(Color.yellow)
                    .clipShape(Circle())
                Text("First")
                    .frame(width: 200,
                           height: 200)
                    .background(Color.orange)
                    .clipShape(Circle())
                Text("First")
                    .frame(width: 200,
                           height: 200)
                    .background(Color.pink)
                    .clipShape(Circle())
                Text("First")
                    .frame(width: 200,
                           height: 200)
                    .background(Color.blue)
                    .clipShape(Circle())
            }
        }
    }
}

struct ScrollViewSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewSwiftUIView()
    }
}
