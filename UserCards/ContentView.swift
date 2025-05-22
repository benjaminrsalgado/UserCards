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
            Color.gray.ignoresSafeArea()
            VStack{
                Text("Swift City")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                Text("15")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                Image(systemName: "cloud.bolt")
                    .font(.system(size: 40, weight: .bold))
                    .padding()
                Button(action: {
                    print("button tapped!!!")
                }){
                    Label("more info",systemImage: "star.fill")
                }
                WeatherDetailView()
            }
        
        }
    }
}


struct WeatherDayView: View{
        let dia: String
        let icono: String
        let temp: String
    
        var body: some View{
            VStack{
                Text(dia)
                Image(systemName: icono)
                Text(temp)
            }
          
        }
    }
    

struct WeatherDetailView: View{
    var body: some View{
        VStack{
            WeatherDayView(dia: "Lunes", icono: "cloud.sun.fill", temp: "30°")
            WeatherDayView(dia: "Martes", icono: "cloud.sun.fill", temp: "22°")
            WeatherDayView(dia: "Miercoles", icono: "cloud.sun.fill", temp: "20°")
            WeatherDayView(dia: "Jueves", icono: "cloud.sun.fill", temp: "10°")
            WeatherDayView(dia: "Viernes", icono: "cloud.sun.fill", temp: "44°")
            WeatherDayView(dia: "Sabado", icono: "cloud.sun.fill", temp: "80°")
            WeatherDayView(dia: "Domingo", icono: "cloud.sun.fill", temp: "30°")
        }
    }
}

#Preview {
    ContentView()
}

