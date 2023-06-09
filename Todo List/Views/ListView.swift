//
//  ListView.swift
//  Todo List
//
//  Created by Kiho Okazawa on 2023-04-04.
//

import SwiftUI

struct ListView: View {
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                HStack {
                    
                    TextField("Enter a to-do item", text: Binding.constant(""))
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Add")
                            .font(.caption)
                    })
                }
                .padding(20)
                
                List {
                    HStack {
                        Image(systemName: "circle")
                        Text("Study for Physics quiz")
                    }
                    HStack {
                        Image(systemName: "checkmark.circle")
                        Text("Finish ComputerScience Assinments")
                    }
                    
                    HStack {
                        Image(systemName: "circle")
                        Text("Go for a run")
                    }
                }
            }
            .navigationTitle("Todo")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
