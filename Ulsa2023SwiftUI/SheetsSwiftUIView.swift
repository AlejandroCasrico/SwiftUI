//
//  SheetsSwiftUIView.swift
//  Ulsa2023SwiftUI
//
//  Created by Alejandro Casillas on 30/05/23.
//

import SwiftUI

struct SheetsSwiftUIView: View {
    @State private var showingActionSheet = false
    //controla si el action Sheet debe mostrarse o no
    @State private var selectedAction: ActionSheetAction? = nil
    //representa la accion seleccionada en el action SHEET
    var body: some View {
        VStack{
            Button("Mostrar Action Sheet"){
              showingActionSheet = true
                //mostrar el actionsheet
            }
        }
        .actionSheet(isPresented: $showingActionSheet) {
            //mostrar el actionsheet
                    ActionSheet(title: Text("Opciones"), message: Text("Selecciona una opción"), buttons: [
                        .default(Text("Opción 1")) { selectedAction = .opcion1 },
                        .default(Text("Opción 2")) { selectedAction = .opcion2 },
                        .cancel(),
                    ])
                }
        .alert(item: $selectedAction) { action in
            //mostrar alerta en funcion del valor selected Actiion
                    switch action {
                    case .opcion1:
                        return Alert(title: Text("Opción 1 seleccionada"))
                    case .opcion2:
                        return Alert(title: Text("Opción 2 seleccionada"))
                    }
                }
    }
}
//implementa el protocolo Identificable para que pueda ser utilizado con el modificador basado en su hash value
enum ActionSheetAction: Identifiable {
    case opcion1
    case opcion2
    var id: Int{
        hashValue
    }
}
    struct SheetsSwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            SheetsSwiftUIView()
        }
    }

