//
//  JackFlixSignUp.swift
//  SwiftUIAssignment
//
//  Created by 김진수 on 4/18/24.
//

import SwiftUI

struct JackFlixSignUp: View {
    
    @State
    private var inputEmailText: String = ""
    @State
    private var password: String = ""
    @State
    private var nickname: String = ""
    @State
    private var location: String = ""
    @State
    private var code: String = ""
    
    @State
    private var isOn = false
    
    let singUpButton: some View = Button(action: {print("tap")}, label: {
        Text("회원 가입")
            .frame(maxWidth: .infinity)
    })
        .frame(height: 40)
        .buttonStyle(.borderedProminent)
        .tint(.white)
        .foregroundStyle(.black)
    
    var body: some View {
        
        ZStack {
            Color.black
            
            VStack {
                
                HStack {
                    Image("wordmark", bundle: nil)
                        .resizable()
                        .scaledToFit()
                        
                }.padding(.horizontal, 50)
                
                Spacer()
                
                JackTextView(text: $inputEmailText, placeholder: "이메일 주소 또는 전화번호")
                JackTextView(text: $password, placeholder: "비밀번호")
                JackTextView(text: $nickname, placeholder: "닉네임")
                JackTextView(text: $location, placeholder: "위치")
                JackTextView(text: $code, placeholder: "추천 코드 입력")
                singUpButton
                HStack {
                    Text("추가 정보 입력")
                        .bold()
                        .foregroundStyle(.white)
                    Spacer()
                    Toggle("", isOn: $isOn)
                        .tint(.red)
                }
                Spacer()
            }.padding(.horizontal, 30)
            .padding(.vertical, 100)
            
        }.ignoresSafeArea()
    }
    
}

#Preview {
    JackFlixSignUp()
}

struct JackTextView: View {
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        TextField("입력", text: $text, prompt: Text(placeholder)
            .foregroundStyle(.white))
        .frame(height: 40)
        .background(.gray)
        .multilineTextAlignment(.center)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.bottom, 10)
    }
}
