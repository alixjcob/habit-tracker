//
//  AddView.swift
//  Habit_tracker
//
//  Created by Alex Jacob on 2023-08-01.
//

import SwiftUI

struct AddView: View {
    @ObservedObject var habits: Habits
    
    @State private var name = ""
    @State private var type = "Body"
    @State private var count = 0
    
    let types = ["Body", "Mind"]
    
    var body: some View {
        NavigationView{
            Form{
                TextField("Name", text: $name)
                Picker("Type", selection: $type){
                    ForEach(types, id: \.self){
                        Text($0)
                    }
                }
                
                TextField("Count", value: $count, format: .number)
                    .keyboardType(.numberPad)
            }
            .navigationTitle("Add new Habit")
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(habits: Habits())
    }
}
