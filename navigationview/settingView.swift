//
//  settingView.swift
//  navigationview
//
//  Created by Ang Sen Luen Matthias on 21/8/23.
//

import SwiftUI

struct settingView: View {
    @State var dark = false
    @Binding var bindedpercentagevariable: Bool
    @Binding var bindedASTARGRADE: Int
    @Binding var bindedAGRADE: Int
    @Binding var bindedBGrade: Int
    @Binding var bindedCGrade: Int
    @Binding var bindedDGrade: Int
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Toggle("Dark mode", isOn: $dark)
                    NavigationLink{
                        Setting3(bindedbindedASTARGRADE: $bindedASTARGRADE, bindedbindedAGrade: $bindedAGRADE, bindedbindedBGrade: $bindedBGrade, bindedbindedCGrade: $bindedCGrade, bindedbindedDGrade: $bindedDGrade)
                    } label: {
                        Text("Modify band ranges")
                    }
                    NavigationLink{
                        setting2(bindedbindedpercentagevariable: $bindedpercentagevariable)
                    } label: {
                        Text("Add modifiers")
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct settingView_Previews: PreviewProvider {
    static var previews: some View {
        settingView(bindedpercentagevariable: .constant(true), bindedASTARGRADE: .constant(91), bindedAGRADE: .constant(75), bindedBGrade: .constant(65), bindedCGrade: .constant(55), bindedDGrade: .constant(50))
    }
}
