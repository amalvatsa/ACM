//
//  MainUI.swift
//  ACM
//
//  Created by Amal Vatsa on 22/02/22.
//

import SwiftUI

struct MainUI: View {
    
    @State private var showSearch = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 45){
            HStack{
                 Text(" Stock UP ")
                        .foregroundColor(.black)
                        .bold()
                        .font(.title)
                        
                
                Spacer()
                Spacer()
                Spacer()
                    Button {
                        showSearch.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .font(.title)
                            .foregroundColor(.blue)
                           
                    
                    }.font(.title)
                    
                    Spacer()
                
                
                
                }
        }
       
            
        
  
    }
}

struct MainUI_Previews: PreviewProvider {
    static var previews: some View {
        MainUI()
    }
}
