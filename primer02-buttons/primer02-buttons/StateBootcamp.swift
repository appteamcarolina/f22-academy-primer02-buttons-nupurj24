//
//  StateBootcamp.swift
//  primer02-buttons
//
//  Created by Nupur Joshi on 10/12/22.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    @State var myTitle: String = "Hi, What's Up"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .yellow
                        myTitle = "Button 1 was pressed"
                        count = count + 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
                HStack(spacing: 20) {
                    Button("ALERT CAROLINA") {
                        backgroundColor = .red
                        myTitle = "ALERT CAROLINA"
                        
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
