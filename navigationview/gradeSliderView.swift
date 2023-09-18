//
//  gradeSliderView.swift
//  navigationview
//
//  Created by Ang Sen Luen Matthias on 21/8/23.
//

import SwiftUI

struct gradeSliderView: View {
    
    @Binding var bindedbindedbindedASTARGRADE: Int
    @Binding var bindedbindedbindedAGRADE: Int
    @Binding var bindedbindedbindedBGRADE: Int
    @Binding var bindedbindedbindedCGRADE: Int
    @Binding var bindedbindedbindedDGRADE: Int
    @State var ASTARGRADETEMP = 0.0
    @Binding var bindedASTARGRADECHECK: Bool
    @Binding var bindedAGRADECHECK: Bool
    @Binding var bindedBGRADECHECK: Bool
    @Binding var bindedCGRADECHECK: Bool
    @Binding var bindedDGRADECHECK: Bool
    @Binding var bindedSHEETA: Bool
    
    
    var body: some View {
        VStack {
            List {
                Text("Change Band requirements")
                VStack {
                    Slider(
                        value: $ASTARGRADETEMP,
                        in: 0...100,
                        step: 1
                    )
                    Text("\(Int(ASTARGRADETEMP))")
                }
                Button {
                    if bindedASTARGRADECHECK {
                        bindedbindedbindedASTARGRADE = Int(ASTARGRADETEMP)
                    } else if bindedAGRADECHECK {
                        bindedbindedbindedAGRADE = Int(ASTARGRADETEMP)
                    } else if bindedBGRADECHECK {
                        bindedbindedbindedBGRADE = Int(ASTARGRADETEMP)
                    } else if bindedCGRADECHECK {
                        bindedbindedbindedCGRADE = Int(ASTARGRADETEMP)
                    } else {
                        bindedbindedbindedDGRADE = Int(ASTARGRADETEMP)
                    }
                    bindedSHEETA = false
                
                    
                    
                } label: {
                    Text("Confirm")
                }
                
            }
        }
    }
}

struct gradeSliderView_Previews: PreviewProvider {
    static var previews: some View {
        gradeSliderView(bindedbindedbindedASTARGRADE: .constant(91), bindedbindedbindedAGRADE: .constant(75), bindedbindedbindedBGRADE: .constant(65), bindedbindedbindedCGRADE: .constant(55), bindedbindedbindedDGRADE: .constant(50), bindedASTARGRADECHECK: .constant(true), bindedAGRADECHECK: .constant(true), bindedBGRADECHECK: .constant(true), bindedCGRADECHECK: .constant(true), bindedDGRADECHECK: .constant(true), bindedSHEETA: .constant(true))
    }
}
