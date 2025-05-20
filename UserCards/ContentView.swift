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

            HStack(spacing: 20) {
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
           
        }
        .padding()
        .background(Color.blue)
        .cornerRadius(12)
    }
}

struct CajaVerdeView: View {
    var body: some View {
        VStack {
            Text("Caja Verde")
            
        }
        .padding()
        .background(Color.green)
        .cornerRadius(12)
    }
}

struct CajaAmarillaView: View {
    var body: some View {
        VStack {
            Text("Caja Amarilla")
        
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(12)
    }
}

#Preview {
    ContentView()
}
