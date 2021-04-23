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
                
                Button(action: {
                    searchFor(query)
                }) {
                    Image(systemName: "location.circle.fill")
                        .foregroundColor(.black)
                        .font(.title)
                }
                
                TextField("String", text: $query, onCommit: {
                    searchFor(query)
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.webSearch)
                
                Button(action: {
                    searchFor(query)
                }) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .font(.title)
                }
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
    
    func searchFor(_ city: String) {
        print("City \(city)")
        self.query = ""
        hideKeyboard()
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
