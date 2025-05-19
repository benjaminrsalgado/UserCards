//
//  ContentView.swift
//  UserCards
//
//  Created by Benjamin Rojo on 19/05/25.
//

import SwiftUI
struct ContentView: View {
    let libro = [
        BookView(titulo: "harry potter", autor: "J.K Rowling", año: 1989, portada:"broom"),
        BookView(titulo: "Building a Second Brain", autor: "Tiago Forte", año: 2019, portada:"book.fill")
    ]
    var body: some View {
        VStack {
            
        }
        
        .padding()
    }
}
//El molde con las propiedades
struct BookView: View{
    let titulo: String
    let autor: String
    let año: Int
    let portada: String
    
//lo que saldra en la interfaz
    var body: some View{
        VStack{
            Text(titulo)
            Text(autor)
            Text(String(año))
            Image(systemName:portada)
        }
    }
}

#Preview {
    ContentView()
}
