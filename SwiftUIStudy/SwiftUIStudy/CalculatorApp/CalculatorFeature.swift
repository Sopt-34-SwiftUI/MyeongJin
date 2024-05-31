//
//  CalculatorFeature.swift
//  SwiftUIStudy
//
//  Created by 이명진 on 5/31/24.
//

import ComposableArchitecture

struct CalculatorFeature: Reducer {
    
    @ObservableState
    struct State: Equatable {
        var totalNumber: String = "0"
        var previousNumber: String = ""
        var operation: ButtonStyle?
        var inTheMiddleOfTyping = false
    }
    
    enum Action: Equatable {
        case numberButtonTapped(ButtonStyle)
        case operationButtonTapped(ButtonStyle)
        case equalButtonTapped
        case clearButtonTapped
        case reverseButtonTapped
        case percentButtonTapped
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case let .numberButtonTapped(button):
                let number = button.buttonName
                if state.inTheMiddleOfTyping {
                    state.totalNumber += number
                } else {
                    state.totalNumber = number
                    state.inTheMiddleOfTyping = true
                }
                return .none
                
            case let .operationButtonTapped(button):
                state.previousNumber = state.totalNumber
                state.operation = button
                state.inTheMiddleOfTyping = false
                return .none
                
            case .equalButtonTapped:
                guard let operation = state.operation,
                      let previousValue = Double(state.previousNumber),
                      let currentValue = Double(state.totalNumber) else {
                    return .none
                }
                
                var result: Double = 0
                
                switch operation {
                case .plus:
                    result = previousValue + currentValue
                case .minus:
                    result = previousValue - currentValue
                case .multiple:
                    result = previousValue * currentValue
                case .divide:
                    result = previousValue / currentValue
                default:
                    break
                }
                
                if result.truncatingRemainder(dividingBy: 1) == 0 {
                    state.totalNumber = String(format: "%.0f", result)
                } else {
                    state.totalNumber = String(format: "%.6f", result)
                }
                
                state.operation = nil
                state.inTheMiddleOfTyping = false
                return .none
                
            case .clearButtonTapped:
                state.totalNumber = "0"
                state.previousNumber = ""
                state.operation = nil
                state.inTheMiddleOfTyping = false
                return .none
                
            case .reverseButtonTapped:
                if let value = Double(state.totalNumber) {
                    state.totalNumber = String(value * -1)
                }
                return .none
                
            case .percentButtonTapped:
                if let value = Double(state.totalNumber) {
                    state.totalNumber = String(value / 100)
                }
                return .none
            }
        }
    }
}
