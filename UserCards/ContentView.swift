//
//  ContentView.swift
//  UserCards
//
//  Created by Benjamin Rojo on 19/05/25.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea() 

            HStack(spacing: 10) {
                CajaAzulView()
               
                CajaVerdeView()
               
                CajaAmarillaView()
            }
        }
    }
}

struct CajaAzulView: View {
    var body: some View {
        VStack {
            Text("Caja Azul")
            Text("este es un texto de caja azul ")
                   .multilineTextAlignment(.center)
            HStack{
                Image(systemName: "person.circle.fill")
                Text("Benjamin Rojo")
            }
        }
        .padding()
        .frame(width: 140)
        .background(.blue)
        .cornerRadius(12)
    }
}

struct CajaVerdeView: View {
    var body: some View {
        VStack {
            Text("Caja Verde")
            Text("este es un texto de la caja verde")
            HStack{
                Image(systemName: "person.circle.fill")
                Text("Benjamin Rojo")
            }
        }
        .padding()
        .frame(width: 150)
        .background(.green)
        .cornerRadius(12)
    }
}

struct CajaAmarillaView: View {
    var body: some View {
        VStack {
            Text("Caja Amarilla")
            Text("este es un texto de la caja amarilla")
                .multilineTextAlignment(.center)
            HStack{
                Image(systemName: "person.circle.fill")
                Text("Benjamin Rojo")
            }
         
        }
        .padding()
        .frame(width: 140)
        .background(.yellow)
        .cornerRadius(12)
    }
}

#Preview {
    ContentView()
}
