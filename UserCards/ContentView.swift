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
            Color.blue.ignoresSafeArea()
            VStack{
                Text("Swift Restaurant")
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                Text("la mejor comida del mundo")
                    .foregroundColor(.orange)
                    .font(.subheadline)
                ComidaView()
                BotonView()
                
            }
       
            
        }
    }
}
struct ComidaView: View{
    var body: some View{
        HStack{
            Image(systemName: "leaf")
            Text("Hamburgesa")
            Image(systemName: "star.fill")
            Text("Estrella")
            Image(systemName: "pizza")
            Text("Pizza")
        }
        .padding()
    }
}

struct BotonView: View{
    var body: some View{
        HStack{
            Button(action: {
                print("ordeno")
            }) {
                Label("Ordenar", systemImage: "hand.thumbsup.fill")
            }
            .foregroundColor(.white)
            Button(action: {
                print("Favvvvv")
            }) {
                Label("Favoritos", systemImage: "star.fill")
            }
            .foregroundColor(.white)
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
