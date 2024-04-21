//
//  RandomImageView.swift
//  SwiftUIAssignment
//
//  Created by 김진수 on 4/21/24.
//

import SwiftUI

struct RandomImageView: View {
    let url = URL(string: "https://picsum.photos/200/300")
    var body: some View {
        AsyncImage(url: url) { data in
            switch data {
            case .empty:
                ProgressView()
                    .frame(width: 100, height: 100)
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 150)
                    .clipShape(.rect(cornerRadius: 10))
            case .failure(let error):
                Image(systemName: "star")
            @unknown default:
                Image(systemName: "star")
            }
        }
        .scaledToFit()
        .frame(width: 100, height: 100)
            
    }
}

#Preview {
    RandomImageView()
}
