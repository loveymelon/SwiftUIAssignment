//
//  ContentView.swift
//  SwiftUIAssignment
//
//  Created by 김진수 on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    
    let title: some View = VStack(alignment: .leading, content: {
        Text("포인트를 더 모을 수 있게 맞춤 혜택을 추천해드릴까요?")
            .foregroundStyle(Color.white)
            .font(.title.bold())
    }) // 이건 단순하게 변수
    
    let serviceText: some View = VStack {
        HStack {
            Text("맞춤형 서비스 이용동의")
                .foregroundStyle(Color.white)
            Spacer()
        }
            
        Button(action: {
            print("동의하기")
        }) {
            Text("동의하기")
                .foregroundStyle(.white)
        }
        .frame(minWidth: 50 ,maxWidth: .infinity)
        .padding()
        .background(Color.blue)
        .clipShape(.rect(cornerRadius: 20))
        .padding()
        
        Button(action: {print("tap")}, label: {
            Text("다음에 하기")
        }).foregroundColor(.gray)
    }.safeAreaPadding(10)
        
    
    
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(content: {
                HStack {
                    title
                    Spacer()
                }
                Spacer().frame(height: 50)
                VStack(content: {
                    QuizeView() // 반복되기 때문에 struct로 뺐습니다.
                    Spacer().frame(height: 30)
                    QuizeView()
                    Spacer().frame(height: 30)
                    QuizeView()
                    Spacer()
                })
                serviceText
            }).safeAreaPadding(20)
            
        }
    } // 여기는 ViewDidLoad
}

#Preview {
    ContentView()
}

struct QuizeView: View {
    var body: some View {
        HStack {
            Image(systemName: "checkmark.seal")
                .foregroundStyle(Color.white)
            Text("매일 포인트 받는 출석체크 퀴즈")
                .foregroundStyle(Color.white)
            Spacer()
        }
    }
}
