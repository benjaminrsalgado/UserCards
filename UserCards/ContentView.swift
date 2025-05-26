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
                gradient: Gradient(colors: [.blue, .green]),
                startPoint: .top,
                endPoint: .bottom
            ).ignoresSafeArea()
            
            VStack{
                Text("Menu del dia")
                    .foregroundColor(.white)
                    .font(.title)
                MenuView()
            }

        }
    }
            
}
//Usando la vista compuesta
struct MenuView: View{
    var body: some View{
        ScrollView(.horizontal){
            HStack{
                PlatilloCardView(nombrePlatillo: "Tacos", emoji: "takeoutbag.and.cup.and.straw.fill"
, precio: "$20")
                PlatilloCardView(nombrePlatillo: "Sushi", emoji: "leaf.fill", precio: "$15")
                PlatilloCardView(nombrePlatillo: "Pizza", emoji: "fork.knife.circle.fill", precio: "$12")
                PlatilloCardView(nombrePlatillo: "Hamburgesa", emoji: "takeoutbag.and.cup.and.straw.fill", precio: "$40")
                PlatilloCardView(nombrePlatillo: "Mexican Egss", emoji: "takeoutbag.and.cup.and.straw.fill", precio: "22")
                PlatilloCardView(nombrePlatillo: "met", emoji: "takeoutbag.and.cup.and.straw.fill", precio: "18")
                PlatilloCardView(nombrePlatillo: "eggs", emoji: "takeoutbag.and.cup.and.straw.fill", precio: "22")
            }
            .padding()
        }
    }
}
// Vista compuesta
struct PlatilloCardView: View{
    let nombrePlatillo: String
    let emoji: String
    let precio: String
    var body: some View{
        VStack{
            Image(systemName: emoji)
            Text(nombrePlatillo)
            Text(precio)
        }
        .padding()
        .background(.white)
        .cornerRadius(20)
    }
}





#Preview {
    ContentView()
}

