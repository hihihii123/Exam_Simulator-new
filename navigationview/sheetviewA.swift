//
//  sheetviewA.swift
//  navigationview
//
//  Created by Ang Sen Luen Matthias on 14/8/23.
//

import SwiftUI

struct sheetviewA: View {
    @Binding var bindedCounter: Int
    @Binding var bindedSheetShownA: Bool
    var body: some View {
        VStack {
            Text("Score exceeds 100")

            Button {
                bindedCounter = 100
            } label: {
                Text("Reduce score to 100")
            }
        }
    }
}

struct sheetviewA_Previews: PreviewProvider {
    static var previews: some View {
        sheetviewA(bindedCounter: .constant(12), bindedSheetShownA: .constant(true))
    }
} 

