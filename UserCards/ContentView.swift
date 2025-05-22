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
                Text("Mi viaje")
                    .foregroundColor(.white)
                    .font(.title)
                Itinerario()
            }
            }
            
        }
    }

struct TravelDayView : View{
    let dia: String
    let ciudad: String
    let icono: String
    var body: some View{
        HStack{
            Text(dia)
            Text(ciudad)
            Image(systemName: icono)
        }
        .padding()
    }
}

struct Itinerario: View{
    var body: some View{
            ScrollView(.horizontal) {
                HStack{
                TravelDayView(dia: "1 diciembre", ciudad: "Roma",icono:  "star.fill")
                TravelDayView(dia: "2 diciembre", ciudad: "Finlandia",icono:  "star.fill")
                TravelDayView(dia: "3 diciembre", ciudad: "España",icono:  "star.fill")
                TravelDayView(dia: "4 diciembre", ciudad: "Portugal",icono:  "star.fill")
                TravelDayView(dia: "5 diciembre", ciudad: "Sweeden",icono:  "star.fill")
            }
            .padding(.horizontal)
            .foregroundColor(.orange)
            .bold()
        }
        
    }
}



#Preview {
    ContentView()
}

