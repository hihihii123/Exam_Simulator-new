//
//  us.swift
//  navigationview
//
//  Created by Ang Sen Luen Matthias on 21/8/23.
//

import SwiftUI

struct ContentView: View {
    @State var sheetShownD = false
    @State var sheetShownE = false
    @State var slist: [String] = []
    @State var percentagevariable = true
    @AppStorage("AS") var AStarGrade = 91
    @AppStorage("A") var AGrade = 75
    @AppStorage("B") var BGrade = 65
    @AppStorage("C") var CGrade = 55
    @AppStorage("D") var DGrade = 50
    
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    
                    NavigationLink {
                        ContentView1(bindedASTARGRADE: $AStarGrade, bindedAGrade: $AGrade, bindedBGrade: $BGrade, bindedCGrade: $CGrade, bindedDGrade: $DGrade)
                    } label: {
                        Text("Main Grade")
                    }
                    ForEach(slist, id: \.self) {item in
                        Text(item)
                    }
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink {
                        settingView(bindedpercentagevariable: $percentagevariable, bindedASTARGRADE: $AStarGrade, bindedAGRADE: $AGrade, bindedBGrade: $BGrade, bindedCGrade: $CGrade, bindedDGrade: $DGrade)
                    } label: {
                        Image(systemName: "gearshape")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        sheetShownD = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                
            }
        }
            
        .sheet(isPresented: $sheetShownD) {
            add_grade(bindedSlist: $slist, bindedsheetShownD: $sheetShownD)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

