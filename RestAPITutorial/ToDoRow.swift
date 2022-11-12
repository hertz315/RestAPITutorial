//
//  ToDoLow.swift
//  RestAPITutorial
//
//  Created by Hertz on 11/12/22.
//

import SwiftUI

struct ToDoRow: View {
    @State var isSelected: Bool = false
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text("ID: 123 / 완료여부: 미완료")
                Text("오늘도 빡코딩")
            }
            .frame(maxWidth: .infinity)
            
            VStack(alignment: .trailing) {
                actionButtons
                Toggle(isOn: $isSelected) {
                    EmptyView()
                }
                .frame(width: 80)
            }
            
            
        }
        .frame(maxWidth: .infinity)
    }
    
    fileprivate var actionButtons: some View {
        HStack {
            Button {
                
            } label: {
                Text("수정")
            }
            .buttonStyle(MyDefaultBtnStyle(bgColor: .purple))
            .frame(width: 80)
            
            Button {
                
            } label: {
                Text("삭제")
            }
            .buttonStyle(MyDefaultBtnStyle(bgColor: .gray))
            .frame(width: 80)
        }
    }
}

struct ToDoLow_Previews: PreviewProvider {
    static var previews: some View {
        ToDoRow()
    }
}
