//
//  CalculatorLogic.swift
//  SwiftUIStudy
//
//  Created by 이명진 on 6/1/24.
//

import ComposableArchitecture

protocol CalculatorLogic {
    func handleNumberButtonTapped(_ state: inout CalculatorFeature.State, button: ButtonStyle) -> Effect<CalculatorFeature.Action>
    func handleOperationButtonTapped(_ state: inout CalculatorFeature.State, button: ButtonStyle) -> Effect<CalculatorFeature.Action>
    func handleEqualButtonTapped(_ state: inout CalculatorFeature.State) -> Effect<CalculatorFeature.Action>
    func handleClearButtonTapped(_ state: inout CalculatorFeature.State) -> Effect<CalculatorFeature.Action>
    func handleReverseButtonTapped(_ state: inout CalculatorFeature.State) -> Effect<CalculatorFeature.Action>
    func handlePercentButtonTapped(_ state: inout CalculatorFeature.State) -> Effect<CalculatorFeature.Action>
}
