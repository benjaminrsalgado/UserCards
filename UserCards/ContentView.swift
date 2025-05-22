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
                gradient: Gradient(colors: [.green, .gray]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack{
                Text("Agenda de Hoy")
                    .foregroundColor(.yellow)
                    .font(.title)
                EventoView()
            }
        }
    }
}

struct EventRowView: View{
    let hora : String
    let tipo: String
    let lugar: String
    let icono: String
    var body: some View{
        HStack{
            Text(hora)
            Spacer()
            Text(tipo)
            Spacer()
            Text(lugar)
            Spacer()
            Image(systemName: icono)
        }
    }
}

struct EventoView: View{
    var body: some View{
        VStack{
            EventRowView( hora: "20:00hrs", tipo: "Conferencia", lugar: "CDMX", icono: "star.fill")
            EventRowView( hora: "10:00hrs", tipo: "Conferencia", lugar: "CDMX", icono: "star.fill")
            EventRowView( hora: "5:00hrs", tipo: "Conferencia", lugar: "CDMX", icono: "star.fill")
        }
       
    }
}



#Preview {
    ContentView()
}

