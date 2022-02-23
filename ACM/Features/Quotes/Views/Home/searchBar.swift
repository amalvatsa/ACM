//
//  searchBar.swift
//  ACM
//
//  Created by Amal Vatsa on 22/02/22.
//

import SwiftUI

struct searchBar: View {
    
    @Binding var searchTerm: String
    
    var body: some View {
        CustomTextField(placeholder:Text("Stock Here".foregroundColor(Color.gray),text:$searchTerm))
    }
}

struct searchBar_Previews: PreviewProvider {
    static var previews: some View {
        searchBar(searchTerm: .constant(""))
    }
}
