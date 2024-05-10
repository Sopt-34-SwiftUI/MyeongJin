//
//  MainView.swift
//  SwiftUIStudy
//
//  Created by 이명진 on 5/10/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var totalNumber: String = "0"
    
    
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
                HStack {
                    Button {
                        
                    } label: {
                        Text("C")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("/")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("%")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("$")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
                }
                HStack {
                    Button {
                        totalNumber += "7"
                    } label: {
                        Text("7")
                            .frame(width: 80, height: 80)
                            .background(Color.numberButtom)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("8")
                            .frame(width: 80, height: 80)
                            .background(Color.numberButtom)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("9")
                            .frame(width: 80, height: 80)
                            .background(Color.numberButtom)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("x")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
                }
                HStack {
                    Button {
                        
                    } label: {
                        Text("4")
                            .frame(width: 80, height: 80)
                            .background(Color.numberButtom)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("5")
                            .frame(width: 80, height: 80)
                            .background(Color.numberButtom)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("6")
                            .frame(width: 80, height: 80)
                            .background(Color.numberButtom)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("-")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
                }
                HStack {
                    Button {
                        
                    } label: {
                        Text("1")
                            .frame(width: 80, height: 80)
                            .background(Color.numberButtom)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("2")
                            .frame(width: 80, height: 80)
                            .background(Color.numberButtom)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("3")
                            .frame(width: 80, height: 80)
                            .background(Color.numberButtom)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("+")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
                }
                HStack {
                    Button {
                        
                    } label: {
                        Text("0")
                            .frame(width: 165, height: 80)
                            .background(Color.numberButtom)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text(".")
                            .frame(width: 80, height: 80)
                            .background(Color.numberButtom)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label: {
                        Text("=")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
                }
            }
        }
    }
}

#Preview {
    MainView()
}
