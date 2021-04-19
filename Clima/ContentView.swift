//
//  ContentView.swift
//  Clima
//
//  Created by Murillo R. Araujo on 19/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var query: String = ""
    
    var body: some View {
        
        VStack(alignment: .trailing) {
            HStack {
                Image(systemName: "location.circle.fill")
                    .font(.title)
                
                TextField("Search", text: $query)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Image(systemName: "magnifyingglass")
                    .font(.title)
            }
            .padding()
            
            VStack(alignment: .trailing) {
                Image(systemName: "sun.max.fill")
                    .font(.system(size: 90))
                
                Text("21º C")
                    .font(.system(size: 90))
                
                Text("London")
                    .font(.system(size: 30))
            } .padding()
            
            Spacer()
            
        }
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
