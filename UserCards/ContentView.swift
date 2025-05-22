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
            LinearGradient(
                gradient: Gradient(colors: [.blue, .white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack {
                Text("Mi rutina")
                    .foregroundColor(.red)
                    .font(.title)
                ActivityRowView()
            }
        }
    }
}

struct ActivityRowView: View{
    var body: some View{
        VStack{
            RoutineDetailView(actividad: "despertar", hora: "8:00am", icono :  "star.fill")
            RoutineDetailView(actividad: "desayuno", hora: "9:00am", icono :  "star.fill")
            RoutineDetailView(actividad: "estudio", hora: "10:00am", icono : "star.fill")
            RoutineDetailView(actividad: "como", hora: "4:00pm", icono : "star.fill")
            RoutineDetailView(actividad: "free time", hora: "5:00pm", icono :  "star.fill")
        }
    }
}

struct RoutineDetailView: View{
    let actividad : String
    let hora : String
    let icono : String
    
    var body: some View{
        VStack{
            Text(actividad)
            Text(hora)
            Image(systemName: icono)
        }
    }
}


#Preview {
    ContentView()
}

