//
//  AuthorListView.swift
//  Mioritic Quotes
//
//  Created by Viorel Harabaru  on 23.01.2023.
//

import SwiftUI

struct AuthorListView: View {
    
    var quote:Quote
    
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 13.0) {
                    
                    Spacer()
                    
                    ForEach(quote.quotes, id: \.self) { element in
                        Text("♛ " + element)
                            .padding(.horizontal, 30.0)
                                    
                            

                }.navigationTitle(quote.author)
            }
        }
    }
}


struct AuthorListView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuoteModel()
        AuthorListView(quote: model.quote[0])
    }
}
