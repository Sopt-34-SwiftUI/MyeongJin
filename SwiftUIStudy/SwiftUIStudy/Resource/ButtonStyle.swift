//
//  ButtonStyle.swift
//  SwiftUIStudy
//
//  Created by 이명진 on 5/31/24.
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
