//
//  ContentView.swift
//  FitnessApp
//
//  Created by Shilpa Joy on 2024-08-29.
//

import SwiftUI

struct FitnessTabView: View {
    
    @State private var healthStore = HealthStore()
    
    var body: some View {
       /* NavigationView {
            
            VStack {
                List(healthStore.steps) { step in
                    Text("\(step.count)")
                }
            }
            .navigationTitle("Fitness Activity")
            .task {
                await healthStore.requestAuthorization()
                
                do {
                    try await healthStore.calculateSteps()
                } catch {
                    print(error)
                }
            }
            .padding()
        }*/
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
            
        }

    }
}

#Preview {
    FitnessTabView()
}
