//
//  ToDoView.swift
//  RestAPITutorial
//
//  Created by Hertz on 11/12/22.
//

import Foundation
import SwiftUI

struct ToDoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            getHeader()
            UISearchBarWrapper()
            
            Spacer()
            
            List {
                ToDoRow()
                ToDoRow()
                ToDoRow()
                ToDoRow()
                ToDoRow()
            }
            .listStyle(.plain)
        }
    }
    
    fileprivate func getHeader() -> some View {
        Group {
            topHeader
            secondHeader
        }.padding(.horizontal, 10)
    }
    
    /// top 헤더
    fileprivate var topHeader: some View {
        
        Group {
            
            Text("ToDoView / page: 2")
            Text("선택된 할일: []")
            
            HStack {
                
                Button(action: {}) {
                    Text("클로저")
                }
                .buttonStyle(MyDefaultBtnStyle())
                
                Button(action: {}) {
                    Text("Rx")
                }
                .buttonStyle(MyDefaultBtnStyle())
                
                Button(action: {}) {
                    Text("콤바인")
                }
                .buttonStyle(MyDefaultBtnStyle())
                
                Button(action: {}) {
                    Text("Async")
                }
                .buttonStyle(MyDefaultBtnStyle())
            }
            .frame(minWidth: 0, maxWidth: .infinity)
        }
    }
    /// second 헤더
    fileprivate var secondHeader: some View {
        
        
        Group {
            Text("Async 변환 액션들")
            
            Group {
                
                
                
                HStack {
                    Button(action: {}) {
                        Text("클로저 👉🏻 Async")
                    }
                    .buttonStyle(MyDefaultBtnStyle())
                    
                    
                    Button(action: {}) {
                        Text("Rx 👉🏻 Async")
                    }
                    .buttonStyle(MyDefaultBtnStyle())
                    
                    Button(action: {}) {
                        Text("Combine 👉🏻 Async")
                    }
                    .buttonStyle(MyDefaultBtnStyle())
                    
                }
                
            }
            
            Group {
                HStack {
                    Button(action: {}) {
                        Text("초기화")
                    }
                    .buttonStyle(MyDefaultBtnStyle(bgColor: .purple, textColor: .black))
                    
                    Button(action: {}) {
                        Text("선택된 할일들 삭제")
                    }
                    .buttonStyle(MyDefaultBtnStyle(bgColor: .pink, textColor: .black))
                    
                    Button(action: {}) {
                        Text("할 일 추가")
                    }
                    .buttonStyle(MyDefaultBtnStyle(bgColor: .yellow, textColor: .black))
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                
            }
        }
        
    }
    
}


struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView()
    }
}
