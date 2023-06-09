//
//  ContentView.swift
//  Ulsa2023SwiftUI
//
//  Created by Alejandro Casillas on 23/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
            
                    Text("First")
                        .frame(width: 200,
                               height: 200)
                        .background(Color.red)
                        .clipShape(Circle())
                    
                ZStack {
                    Text("Second")
                            .frame(width: 200,
                                   height: 200)
                            .background(Color.green)
                        .clipShape(Circle())
                        .overlay(
    
                            Image(systemName: "paperplane")
                                .resizable()
                                .frame(width:50,
                                       height:50)
                                .padding(EdgeInsets(top:-60
                                        ,leading: 8,bottom: 8,
                                        trailing: 0))
                        )
                   
                }
                
                    Text("third")
                        .frame(width: 200,
                               height: 200)
                        .background(Color.yellow)
                        .clipShape(Circle())
                    Text("fourth")
                        .frame(width: 200,
                               height: 200)
                        .background(Color.blue)
                        .clipShape(Circle())
                    Text("fift")
                        .frame(width: 200,
                               height: 200)
                        .background(Color.purple)
                        .clipShape(Circle())
                }
            .frame(width:UIScreen.main.bounds.width, height: 200)
            .tabViewStyle(PageTabViewStyle())
            Spacer()
            List(0..<50) { index in
                VStack {
                    Text("Element\(index)")
                       
                    Image(systemName: "paperplane")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:20,
                               height:20)
                        .padding(EdgeInsets(top:-60
                                ,leading: 8,bottom: 8,
                                trailing: 0))
                }
            }
            Button("Click Me") {
                print("Hello, how are u, i was wonder, if after all this years")
            }
            Text("Hello, its me!")
            Spacer()
            Text("Help!! im at the bottom of the page")
            }
           
          
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
