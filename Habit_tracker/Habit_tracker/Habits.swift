//
//  Habits.swift
//  Habit_tracker
//
//  Created by Alex Jacob on 2023-07-31.
//

import Foundation

class Habits: ObservableObject {
    @Published var items = [HabitItem]()
}
