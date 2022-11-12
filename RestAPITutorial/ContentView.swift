//
//  ContentView.swift
//  RestAPITutorial
//
//  Created by Hertz on 11/12/22.
//

import SwiftUI

struct ContentView: View {
    
    var data = ["Closure", "RxSwift", "Combine", "Async"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("ToDoCompletionView / page: 2")
                .font(.body)
            Text("선택된 할일: []")
                .font(.body)
            HStack(spacing: 10) {
                ForEach(data, id: \.self) { buttonTtitle in
                    Button {
                        
                    } label: {
                        Text(buttonTtitle)
                            .font(.footnote)
                            .bold()
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.red)
                            .cornerRadius(12)
//                            .frame(maxWidth: .infinity)
                    }
                }
                
            }
            .frame(maxWidth: .infinity)
            .background(Color.yellow)
            .padding(.horizontal, 16)
        }
//        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
