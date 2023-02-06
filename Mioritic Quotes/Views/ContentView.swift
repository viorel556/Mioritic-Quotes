//
//  ContentView.swift
//  Mioritic Quotes
//
//  Created by Viorel Harabaru  on 22.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        
        NavigationView {
            List (model.quote) { i in
            
                
                NavigationLink (
                    destination: AuthorListView(quote:i),
                           label: { VStack {
                
                    ZStack {
                    
                        Image(i.image)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 270.0)
                            .cornerRadius(10)
                            .padding(0.00)
                            .clipped()
                        
                        VStack(alignment: .leading, spacing: 0.0) {
                            
                            Spacer()
                            
                            Text(i.quotes[0])
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)
                                .padding([.top, .leading, .trailing])
                                .shadow(color: .black, radius: 10)
                                
                            Text("- " + i.author)
                                .padding()
                                .foregroundColor(Color.white)
                                .shadow(color: .black, radius: 8)

                            Spacer()
                        }
                
                    }
           
                           }.listRowSeparator(/*@START_MENU_TOKEN@*/.hidden/*@END_MENU_TOKEN@*/)})
    
            }.navigationTitle("Mioritic Quotes")
            .listStyle(PlainListStyle())

            
            

        }

    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
