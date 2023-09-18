//
//  Setting3.swift
//  navigationview
//
//  Created by Ang Sen Luen Matthias on 21/8/23.
//

import SwiftUI

struct Setting3: View {
    @State var ASTARCHECK = false
    @State var ACHECK = false
    @State var BCHECK = false
    @State var CCHECK = false
    @State var DCHECK = false
    @State var LowGrade = 0
    @State var HighGRade = 0
    @Binding var bindedbindedASTARGRADE: Int
    @Binding var bindedbindedAGrade: Int
    @Binding var bindedbindedBGrade: Int
    @Binding var bindedbindedCGrade: Int
    @Binding var bindedbindedDGrade: Int
    @State var SHEETA = false
    var body: some View {
        NavigationStack {
            List{
                Button{
                    SHEETA = true
                    ASTARCHECK = true
                    LowGrade = bindedbindedAGrade
                    HighGRade = 100
                } label: {
                    Text("Change A* band range")
                }
                Button{
                    SHEETA = true
                    ACHECK = true
                    LowGrade = bindedbindedBGrade
                    HighGRade = bindedbindedASTARGRADE
                } label: {
                    Text("Change A band range")
                }
                Button{
                    SHEETA = true
                    BCHECK = true
                    LowGrade = bindedbindedCGrade
                    HighGRade = bindedbindedAGrade
                } label: {
                    Text("Change B band range")
                }
                Button{
                    SHEETA = true
                    CCHECK = true
                    LowGrade = bindedbindedDGrade
                    HighGRade = bindedbindedBGrade
                } label: {
                    Text("Change C band range")
                }
                Button{
                    SHEETA = true
                    DCHECK = true
                    LowGrade = bindedbindedBGrade
                    HighGRade = bindedbindedCGrade
                } label: {
                    Text("Change D band range")
                }
                Button(role: .destructive, action: {bindedbindedASTARGRADE = 91
                    bindedbindedAGrade = 75
                    bindedbindedBGrade = 65
                    bindedbindedCGrade = 55
                    bindedbindedDGrade = 50}) {
                        Text("Reset to default")
                    }
                
            }
            .sheet(isPresented: $SHEETA) {
                gradeSliderView(bindedbindedbindedASTARGRADE: $bindedbindedASTARGRADE, bindedbindedbindedAGRADE: $bindedbindedAGrade, bindedbindedbindedBGRADE: $bindedbindedBGrade, bindedbindedbindedCGRADE: $bindedbindedCGrade, bindedbindedbindedDGRADE: $bindedbindedDGrade, bindedASTARGRADECHECK: $ASTARCHECK, bindedAGRADECHECK: $ACHECK, bindedBGRADECHECK: $BCHECK, bindedCGRADECHECK: $CCHECK, bindedDGRADECHECK: $DCHECK, bindedSHEETA: $SHEETA)
            }
            
        }
    }
}

struct Setting3_Previews: PreviewProvider {
    static var previews: some View {
        Setting3(bindedbindedASTARGRADE: .constant(91), bindedbindedAGrade: .constant(75), bindedbindedBGrade: .constant(65), bindedbindedCGrade: .constant(55), bindedbindedDGrade: .constant(50))
    }
}
