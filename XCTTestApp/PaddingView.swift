// Created for XCTTestApp in 2024
// Using Swift 5.0

import SwiftUI

struct PaddingView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(.red)
            
            Rectangle()
                .fill(.green)
        }
        .padding(20)
        
        HStack {
            Spacer().frame(width: 20)

            VStack {
                Rectangle()
                    .fill(.red)
                
                Rectangle()
                    .fill(.green)
            }
            
            Spacer().frame(width: 20)

        }
    }
}

#Preview {
    PaddingView()
}
