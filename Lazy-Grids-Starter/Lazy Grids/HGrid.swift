//
//  HGrid.swift
//  Lazy Grids
//
//  Created by Stewart Lynch on 2021-02-06.
//

import SwiftUI

struct HGrid: View {
    let colors:[Color]
       var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(1..<401) { index in
                    colors[index % colors.count]
                        .overlay(
                            Text("\(index)")
                        )
                        .frame(width: 100)
                }
            }
        }
        .embedInNavigation()
    }
}

struct HGrid_Previews: PreviewProvider {
    static var previews: some View {
        HGrid(colors: [.red, .orange, .yellow, .green, .blue, .purple, .gray])
    }
}
