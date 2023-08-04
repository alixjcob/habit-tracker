//
//  ContentView.swift
//  Habit_tracker
//
//  Created by Alex Jacob on 2023-07-31.
//

import SwiftUI

struct ContentView: View {
    @StateObject var habits = Habits()
    @State private var showingAddHabits = false
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(habits.items, id: \.id){ item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
                
            }
            .navigationTitle("iHabits")
            .toolbar{
                Button{
                    showingAddHabits = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddHabits){
                AddView(habits: habits)
            }
            
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        habits.items.remove(atOffsets: offsets)
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
