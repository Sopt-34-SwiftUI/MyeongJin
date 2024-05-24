//
//  MainView.swift
//  SwiftUIStudy
//
//  Created by 이명진 on 5/10/24.
//

import SwiftUI

enum ButtonStyle: String {
    case first, second, third, forth, fifth, sixth, seventh, eighth, nineth, zero
    case comma, equal, plus, minus, multiple, divide
    case percent, reverse, clear
    
    var buttonName: String {
        switch self {
        case .first:
            return "1"
        case .second:
            return "2"
        case .third:
            return "3"
        case .forth:
            return "4"
        case .fifth:
            return "5"
        case .sixth:
            return "6"
        case .seventh:
            return "7"
        case .eighth:
            return "8"
        case .nineth:
            return "9"
        case .zero:
            return "0"
        case .comma:
            return "."
        case .equal:
            return "="
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .multiple:
            return "X"
        case .divide:
            return "/"
        case .percent:
            return "%"
        case .reverse:
            return "+/-"
        case .clear:
            return "AC"
        }
    }
    
    var buttonColor: Color {
        switch self {
        case .first, .second, .third, .forth, .fifth, .sixth, .seventh, .eighth, .nineth, .zero, .comma:
            return Color.numberButtom
        case .equal, .plus, .minus, .multiple, .divide:
            return Color.orange
        case .percent, .reverse, .clear:
            return Color.gray
        }
    }
    
    var foreground: Color {
        switch self {
        case .first, .second, .third, .forth, .fifth, .sixth, .seventh, .eighth, .nineth, .zero, .comma, .equal, .plus, .minus, .multiple, .divide:
            return Color.white
        case .percent, .reverse, .clear:
            return Color.black
        }
    }
}

struct MainView: View {
    
    @State private var totalNumber: String = "0"
    @State private var previousNumber: String = ""
    @State private var operation: ButtonStyle?
    @State private var inTheMiddleOfTyping = false
    
    private let buttonData: [[ButtonStyle]] = [
        [.clear, .reverse, .percent, .divide],
        [.seventh, .eighth, .nineth, .multiple],
        [.forth, .fifth, .sixth, .minus],
        [.first, .second, .third, .plus],
        [.zero, .comma, .equal]
    ]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text(totalNumber)
                        .padding()
                        .font(.system(size: 73))
                        .foregroundColor(.white)
                }
                ForEach(buttonData, id: \.self) { line in
                    HStack {
                        ForEach(line, id: \.self) { row in
                            Button {
                                handleButtonPress(row)
                            } label: {
                                Text(row.buttonName)
                                    .frame(width: row == .zero ? 160 : 80 , height: 80)
                                    .background(row.buttonColor)
                                    .cornerRadius(40)
                                    .foregroundColor(row.foreground)
                                    .font(.system(size: 33))
                            }
                        }
                    }
                }
            }
        }
    }
    
    private func handleButtonPress(_ button: ButtonStyle) {
        switch button {
        case .first, .second, .third, .forth, .fifth, .sixth, .seventh, .eighth, .nineth, .zero, .comma:
            handleNumberPress(button)
        case .plus, .minus, .multiple, .divide:
            handleOperationPress(button)
        case .equal:
            handleEqualPress()
        case .clear:
            handleClearPress()
        case .reverse:
            handleReversePress()
        case .percent:
            handlePercentPress()
        }
    }
    
    private func handleNumberPress(_ button: ButtonStyle) {
        let number = button.buttonName
        if inTheMiddleOfTyping {
            totalNumber += number
        } else {
            totalNumber = number
            inTheMiddleOfTyping = true
        }
    }
    
    private func handleOperationPress(_ button: ButtonStyle) {
        previousNumber = totalNumber
        operation = button
        inTheMiddleOfTyping = false
    }
    
    private func handleEqualPress() {

    }
    
    private func handleClearPress() {
    }
    
    private func handleReversePress() {
    }
    
    private func handlePercentPress() {
    }
}

#Preview {
    MainView()
}
