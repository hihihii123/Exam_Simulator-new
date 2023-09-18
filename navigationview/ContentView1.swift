//
//  ContentView.swift
//  navigationview
//
//  Created by Ang Sen Luen Matthias on 14/8/23.
//



import SwiftUI

struct ContentView1: View {
    @State var textInTextFieldForCounter = ""
    @State var Counter = 0
    @State var grade = "F"
    @State var sheetShownA = false
    @State var sheetShownB = false
    @State var sheetShownC = false
    @Binding var bindedASTARGRADE: Int
    @Binding var bindedAGrade: Int
    @Binding var bindedBGrade: Int
    @Binding var bindedCGrade: Int
    @Binding var bindedDGrade: Int
    
    @State private var moreThanOneHundred = false
    @State private var lessThanOneHundred = false
    @State private var ignorePermenantMoreThanOneHundred = false
    @State private var fullOnAlertOne = false
    @State private var ignorePermenantLessThanZero = false
    @State private var fullOnAlertTwo = false
        
    var body: some View {
        NavigationStack {
            VStack {
                Text("Your exam score is \(Counter)")
                List{
                    
                    NavigationLink {
                        DetailView(bindedGrade: $grade)
                    } label: {
                        Text("See your grade")
                    }
                    Button{
                        sheetShownB = true
                    } label: {
                        Text("Change your grade")
                    }

                }
            }
                        .navigationTitle("Main Grade")
            
            
            .alert("Marks exceeded 100", isPresented: $fullOnAlertOne) {
                Button(role: .cancel, action: {
                    Counter = 100
                        
                }) {
                    Text("reduce marks to 100")
                }
                Button(action: {}) {
                    Text("Ignore")
                }
                Button(role: .destructive, action: {ignorePermenantMoreThanOneHundred = true}) {
                    Text("Ignore Permanantly")
                }
            }
             
            .alert("Marks less than 0", isPresented: $fullOnAlertTwo) {
                Button(role: .cancel, action: {
                    Counter = 0
                    
                }) {
                    Text("increase marks to 0")
                }
                Button{
                } label: {
                    Text("ignore")
                }
                Button(role: .destructive, action: {ignorePermenantLessThanZero = true}) {
                    Text("Ignore Permanantly")
                }
            }
             
            .padding()
            
            
        }
        //.sheet(isPresented: $sheetShownA) {
          //  sheetviewA(bindedCounter: $Counter, bindedSheetShownA: $sheetShownA)
        //}
        .sheet(isPresented: $sheetShownB) {
            IncreaseView(bindedTextInTextFieldForCounter: $textInTextFieldForCounter, bindedCounter: $Counter, bindedGrade: $grade, bindedsheetshownB: $sheetShownB, bindedbindedASTARVIEW: $bindedASTARGRADE)
        }
        
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1(bindedASTARGRADE: .constant(91), bindedAGrade: .constant(75), bindedBGrade: .constant(65), bindedCGrade: .constant(55),
                     bindedDGrade: .constant(50))
    }
}
