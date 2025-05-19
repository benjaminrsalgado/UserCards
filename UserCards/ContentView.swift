//
//  ContentView.swift
//  UserCards
//
//  Created by Benjamin Rojo on 19/05/25.
//

import SwiftUI
//Struct principal donde unicamente damos el valor de las propiedades
struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            UserView(nombre: "Benjamin", edad: 22, imagen: "person.circle.fill")
            UserView(nombre: "Franco", edad: 29, imagen: "person.circle.fill")
            UserView(nombre: "barbara", edad: 39, imagen: "person.circle.fill")
            UserView(nombre: "Victor", edad: 19, imagen: "person.circle.fill")
        }
        .padding()
    }
}

// struct del molde de los usuarios
struct UserView: View{
    let nombre : String
    let edad: Int
    let imagen: String
//Vista la interfaz
    var body: some View{
        VStack{
            Image(systemName:imagen)
                .font(.system(size: 70, weight: .bold))
                    .foregroundColor(.yellow)
            Text(nombre)
                .font(.title)
            Text(String(edad))
                .font(.headline)

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
