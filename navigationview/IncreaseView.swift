//
//  IncreaseView.swift
//  navigationview
//
//  Created by Ang Sen Luen Matthias on 14/8/23.
//

import SwiftUI

struct IncreaseView: View {
    @Binding var bindedTextInTextFieldForCounter: String
    @Binding var bindedCounter: Int
    @Binding var bindedGrade: String
    @Binding var bindedsheetshownB: Bool
    @Binding var bindedbindedASTARVIEW: Int
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Enter desired mark", text: $bindedTextInTextFieldForCounter)
                Stepper("change the mark by 1", value: $bindedCounter)
                Stepper("change the mark by 5", value: $bindedCounter, step: 5)
                Button {
                    bindedCounter = Int(bindedTextInTextFieldForCounter) ?? 100
                    bindedGrade = (bindedCounter > (bindedbindedASTARVIEW - 1)) ? "A*" : ((bindedCounter > 74) ? "A" : ((bindedCounter > 64) ? "B" : ((bindedCounter > 54) ? "C" : ((bindedCounter > 49) ? "D" : "F"))))
                    bindedsheetshownB = false
                } label: {
                    Text("confirm")
                }
                
            }
        }
    }
}

struct IncreaseView_Previews: PreviewProvider {
    static var previews: some View {
        IncreaseView(bindedTextInTextFieldForCounter: .constant(""), bindedCounter: .constant(13), bindedGrade: .constant("hi"), bindedsheetshownB: .constant(true), bindedbindedASTARVIEW: .constant(91))
    }
}
