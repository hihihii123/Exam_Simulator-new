//
//  setting2.swift
//  navigationview
//
//  Created by Ang Sen Luen Matthias on 21/8/23.
//

import SwiftUI

struct setting2: View {
    @Binding var bindedbindedpercentagevariable: Bool
    var body: some View {
        List {
            Toggle("percentage", isOn: $bindedbindedpercentagevariable)
            
        }
    }
}

struct setting2_Previews: PreviewProvider {
    static var previews: some View {
        setting2(bindedbindedpercentagevariable: .constant(true))
    }
}
