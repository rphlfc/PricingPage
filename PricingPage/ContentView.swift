//
//  ContentView.swift
//  PricingPage
//
//  Created by Raphael Cerqueira on 17/05/21.
//

import SwiftUI

struct ContentView: View {
    let texts = [
        "All limited links",
        "Chat support",
        "Set your rates"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Most popular plan")
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)))
                .background(Capsule().fill(Color(#colorLiteral(red: 0.9508243203, green: 0.9648281932, blue: 0.986343205, alpha: 1))))
            
            Text("Basic")
                .font(.title)
            
            HStack(spacing: 4) {
                Text("$19")
                    .font(.system(size: 29))
                    .fontWeight(.bold)
                
                Text("/month")
                    .font(.system(size: 23))
                    .foregroundColor(.gray)
            }
            
            Text("For most business that want to optimize web queries.")
            
            Divider()
                .padding(.top, 20)
            
            ForEach(texts, id: \.self) { text in
                HStack {
                    Image(systemName: "checkmark")
                        .foregroundColor(Color.green)
                        .padding(8)
                        .background(Color(#colorLiteral(red: 0.853130281, green: 0.9689951539, blue: 0.9230955243, alpha: 1)))
                        .clipShape(Circle())
                    
                    Text(text)
                }
            }
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Get started")
                    .frame(maxWidth: .infinity)
                    .frame(height: 70)
                    .foregroundColor(.white)
                    .background(Color(#colorLiteral(red: 0.2415703833, green: 0.8111765981, blue: 0.9954975247, alpha: 1)))
                    .cornerRadius(8)
            })
        }
        .padding()
    }
    
    // DONE
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
