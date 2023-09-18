//
//  add grade.swift
//  navigationview
//
//  Created by Ang Sen Luen Matthias on 21/8/23.
//

import SwiftUI
struct add_grade: View {
    @State var gradename = ""
    @State var percentage = 0
    @State var percentage2 = ""
    @Binding var bindedSlist: [String]
    @Binding var bindedsheetShownD: Bool
    var body: some View {
        VStack{
            Text("Add new Grade")
            List{
                TextField("Grade name", text: $gradename)
                TextField("percentage", text: $percentage2)
                Button {
                    percentage = Int(percentage2) ?? 100
                    bindedSlist.append(gradename)
                    bindedsheetShownD = false
                } label: {
                    Text("confirm")
                }
            }
        }
    }
}

struct add_grade_Previews: PreviewProvider {
    static var previews: some View {
        add_grade(bindedSlist: .constant([""]), bindedsheetShownD: .constant(true))
    }
}
