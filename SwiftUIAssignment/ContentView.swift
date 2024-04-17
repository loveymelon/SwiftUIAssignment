//
//  ContentView.swift
//  SwiftUIAssignment
//
//  Created by 김진수 on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(content: {
                VStack(alignment: .leading, content: {
                    Text("포인트를 더 모을 수 있게 맞춤 혜택을 추천해드릴까요?")
                        .foregroundStyle(Color.white)
                        .font(.title.bold())
                })
                Spacer().frame(height: 20)
                VStack(content: {
                    HStack {
                        Image(systemName: "checkmark.seal")
                            .foregroundStyle(Color.white)
                        Text("매일 포인트 받는 출석체크 퀴즈")
                            .foregroundStyle(Color.white)
                    }
                    Spacer().frame(height: 10)
                    HStack {
                        Image(systemName: "checkmark.seal")
                            .foregroundStyle(Color.white)
                        Text("매일 포인트 받는 출석체크 퀴즈")
                            .foregroundStyle(Color.white)
                    }
                    Spacer().frame(height: 10)
                    HStack {
                        Image(systemName: "checkmark.seal")
                            .foregroundStyle(Color.white)
                        Text("매일 포인트 받는 출석체크 퀴즈")
                            .foregroundStyle(Color.white)
                    }
                    Spacer().frame(height: 200)
                    Text("맞춤형 서비스 이용동의")
                        .foregroundStyle(Color.white)
                    Button("동의하기") {
                        print("동의하기")
                    }.foregroundStyle(.yellow)
                    .background(.blue)
                    
                })
            })
            
        }
    }
}

#Preview {
    ContentView()
}
