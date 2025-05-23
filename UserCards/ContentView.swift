//
//  ContentView.swift
//  UserCards
//
//  Created by Benjamin Rojo on 19/05/25.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(
                    gradient: Gradient(colors: [.black, .gray]),
                    startPoint: .top,
                    endPoint: .bottom
                ).ignoresSafeArea()
            VStack{
                Text("Mis peliculas favoritas")
                    .font(.title)
                    .foregroundColor(.white)
                PeliculasView()
            }
            }
            }
            
        }
struct PeliculasView: View{
    var body: some View{
        ScrollView(.horizontal){
            HStack{
                PeliculaCardView(nombre: "Harry Potter", icono: "star.fill")
                PeliculaCardView(nombre: "The Hobbit", icono: "star.fill")
                PeliculaCardView(nombre: "Lord of the Rings", icono: "star.fill")
            }
            .padding()
        }
    }
}

struct PeliculaCardView: View{
    let nombre: String
    let icono: String
    var body: some View{
        VStack{
            Text(nombre)
            Image(systemName:icono)
        }
        .padding()
        .background(.orange)
        .cornerRadius(22)
    }
}






#Preview {
    ContentView()
}

