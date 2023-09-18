//
//  DetailView.swift
//  navigationview
//
//  Created by Ang Sen Luen Matthias on 14/8/23.
//

import SwiftUI

struct DetailView: View {
    @Binding var bindedGrade: String
    var body: some View {
        VStack {
            Text("This is the detail view!")
            Text("Your grade is " + bindedGrade)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(bindedGrade: .constant("12"))
    }
}
