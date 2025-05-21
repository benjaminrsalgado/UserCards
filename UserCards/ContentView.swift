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

            ScrollView(.horizontal) {
                HStack(spacing: 30) {
                    CajaAzulView()
                    CajaVerdeView()
                    CajaAmarillaView()
                }
                .padding(.horizontal)
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
        .cornerRadius(33)
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
        .cornerRadius(33)
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
        .frame(width: 150)
        .background(.yellow)
        .cornerRadius(33)
    }
}

#Preview {
    ContentView()
}
