// Created for XCTTestApp in 2024
// Using Swift 5.0

import SwiftUI

struct ConverterView: View {
    @State var input = ""
    @State var result = "0.00"
    let converter = Converter()
    
    var body: some View {
        VStack {
            
            Text("UITest")
                .accessibilityIdentifier("UITest")
            
            TextField("BTC", text: $input).font(.title)
            
            Button("Convert") {
                result = converter.btcToUsd(btc: Double(input) ?? 0.0 )
            }.font(.title)
            
            Divider()
            
            Text(result)
                .font(.title)
                .accessibilityIdentifier("result")
        }
        .padding()
    }
}

#Preview {
    ConverterView()
}
