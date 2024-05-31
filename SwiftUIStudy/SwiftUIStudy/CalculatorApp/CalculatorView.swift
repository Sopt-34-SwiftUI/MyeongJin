//
//  MainView.swift
//  SwiftUIStudy
//
//  Created by 이명진 on 5/10/24.
//

import SwiftUI
import ComposableArchitecture

struct MainView: View {
    
    let store: StoreOf<CalculatorFeature>
    
    private let buttonData: [[ButtonStyle]] = [
        [.clear, .reverse, .percent, .divide],
        [.seventh, .eighth, .nineth, .multiple],
        [.forth, .fifth, .sixth, .minus],
        [.first, .second, .third, .plus],
        [.zero, .comma, .equal]
    ]
    
    var body: some View {
        WithPerceptionTracking {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Text(store.totalNumber)
                            .padding()
                            .font(.system(size: 73))
                            .foregroundColor(.white)
                    }
                    ForEach(buttonData, id: \.self) { line in
                        HStack {
                            ForEach(line, id: \.self) { row in
                                Button {
                                    handleButtonPress(row, store: store)
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
    }
    
    private func handleButtonPress(_ button: ButtonStyle, store:  StoreOf<CalculatorFeature>) {
        switch button {
        case .first, .second, .third, .forth, .fifth, .sixth, .seventh, .eighth, .nineth, .zero, .comma:
            store.send(.numberButtonTapped(button))
        case .plus, .minus, .multiple, .divide:
            store.send(.operationButtonTapped(button))
        case .equal:
            store.send(.equalButtonTapped)
        case .clear:
            store.send(.clearButtonTapped)
        case .reverse:
            store.send(.reverseButtonTapped)
        case .percent:
            store.send(.percentButtonTapped)
        }
    }
}

#Preview {
    MainView(
        store: Store(
            initialState: CalculatorFeature.State(),
            reducer: { CalculatorFeature() }
        )
    )
}
