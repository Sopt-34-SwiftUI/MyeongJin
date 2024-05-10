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
            return "C"
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
}

struct MainView: View {
    
    @State private var totalNumber: String = "0"
    
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
                                // TODO: 버튼 계산 로직 구현
                            } label: {
                                Text(row.buttonName)
                                    .frame(width: row == .zero ? 160 : 80 , height: 80)
                                    .background(row.buttonColor)
                                    .cornerRadius(40)
                                    .foregroundColor(.white)
                                    .font(.system(size: 33))
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
}
