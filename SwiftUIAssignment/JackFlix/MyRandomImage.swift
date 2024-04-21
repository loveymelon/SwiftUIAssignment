//
//  MyRandomImage.swift
//  SwiftUIAssignment
//
//  Created by 김진수 on 4/21/24.
//

import SwiftUI

struct MyRandomImage: View {
    
    let items = ["첫","두","세","네"]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible(minimum: 0, maximum: .infinity))],spacing: 10 ,content: {
                    ForEach(items, id: \.self) { num in
                        makeSection(content: ScrollView(.horizontal) {
                            VStack(content: {
                                LazyHGrid(rows: [GridItem(.flexible(minimum: 0, maximum: .infinity))], content: {
                                    ForEach(items, id: \.self) { _ in
                                        NavigationLink {
                                            NextView(text: num)
                                        } label: {
                                            RandomImageView()
                                                .frame(width: 100, height: 150)
                                                .clipShape(.rect(cornerRadius: 10))
                                        }
                                    }
                                })
                            })
                        }, header: num)
                    }
                    
                }
                )}.navigationTitle("My Random Image")
            .padding(.leading, 20)
        }
    }
}

func makeSection(content: some View, header: String) -> some View {
    return Section {
        content
    } header: {
        HStack(content: {
            Text("\(header)번째 섹션")
            Spacer()
        })
    }
}


#Preview {
    MyRandomImage()
}
