//
//  CategoryUpgrade.swift
//  SwiftUIAssignment
//
//  Created by 김진수 on 4/21/24.
//

import SwiftUI

struct Category: Hashable, Identifiable {
    let name: String
    let count: Int
    
    let id = UUID()
}

struct CategoryUpgrade: View {
    @State
    private var query = ""
    private let item = ["SF", "가족", "스릴러"]
    
    var filterCategory: [Category] {
        return query.isEmpty ? category : category.filter {
            $0.name.contains(query)
        }
    }
    
    @State
    var category = [Category(name: "스릴러", count: 1),
                    Category(name: "액션", count: 1),
                    Category(name: "SF", count: 1),
                    Category(name: "로맨스", count: 4),
                    Category(name: "애니메이션", count: 5),]
    
    func setupRows(_ category: Category) -> some View {
        HStack {
            Image(systemName: "person")
            Text("\(category.name)(\(category.count))")
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                    // forEach가 hasable해야되는데 Category: Hashable의 Hashable을 없앴을 때 문제가 안생기는 이유가 Int가 hasable채택 되어있기때문이다.
                    ForEach(filterCategory, id: \.self) { value in
                        NavigationLink {
                            SearchDetailView(category: value)
                        } label: {
                            setupRows(value)
                        }
                    } // 닫힌 연산자를 선호함
                
            }.navigationTitle("영화 검색")
                .toolbar {
                    Button("추가") {
                        category.append(Category(name: item.randomElement()!, count: .random(in: 1...100)))
                    }
                }
            .searchable(text: $query, placement: .navigationBarDrawer, prompt: "영화를 검색해보세요.")
            .onSubmit(of: .search) {
                print("asdf")
            } // 검색기능이라는 걸 명시?
            // 실시간
            // search 쓸때 짝꿍
            //prompt: placeholder
        }
    }
}

#Preview {
    CategoryUpgrade()
}

struct SearchDetailView: View {
    
    let category: Category
    
    var body: some View {
        Text("\(category.name) 화면")
    }
}
