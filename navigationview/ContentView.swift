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
    @State var AStarGrade = 91
    @State var AGrade = 75
    @State var BGrade = 65
    @State var CGrade = 55
    @State var DGrade = 50
    
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

