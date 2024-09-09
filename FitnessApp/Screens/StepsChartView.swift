//
//  StepsChartView.swift
//  FitnessApp
//
//  Created by Shilpa Joy on 2024-09-07.
//

import SwiftUI
import Charts

struct StepsChartView: View {
    
    let steps: [Step]
    var body: some View {
        Chart {
            ForEach(steps) { step in
                BarMark(x: .value("Date", step.date), y: .value("Count", step.count))
                    .foregroundStyle(isUnder5000(step.count) ? .red : .green)
            }
        }
    }
}
