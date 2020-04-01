//
//  ContentView.swift
//  WeSplit
//
//  Created by Piyush Bajaj on 2/23/20.
//  Copyright © 2020 Piyush Bajaj. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [0,10,15,20,25]
    
    var totalPerPerson: Double{
//        Calulate total per person here
        let peopleCount = Double(numOfPeople + 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0
        
        
        let tipValue = orderAmount/100 * tipSelection
        let grandTotal =  orderAmount + tipValue
        let amountPerPerson = grandTotal/peopleCount
        
        return amountPerPerson
    }
    var grandTotalWithTip: Double{
    //        Calulate total per person here
            
            let tipSelection = Double(tipPercentages[tipPercentage])
            let orderAmount = Double(checkAmount) ?? 0
            
            
            let tipValue = orderAmount/100 * tipSelection
            let grandTotal =  orderAmount + tipValue
            
            
            return grandTotal
        }
    
    var body: some View {
        NavigationView{
            
                Form{
                    Section{
                        TextField("Amount",text: $checkAmount)
                            .keyboardType(.decimalPad)
                        Picker("Number of people",selection: $numOfPeople){
                            ForEach(2..<100){
                                Text("\($0) people")
                            }
                        }
                        
                    }
                    Section(header :Text("How much tip do you want to leave")){
//                        Text("How much tip do you want to leave")
                        Picker("Tip Percentage",selection: $tipPercentage){
                            ForEach(0 ..< tipPercentages.count){
                                Text("\(self.tipPercentages[$0])%")
                            }
                        
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        
                    }
                    Section(header: Text("Amount per Person")){
                        Text("$\(totalPerPerson,specifier: "%.2f")")
                    }
                    Section(header: Text("Amount per Person")){
                        Text("$\(grandTotalWithTip,specifier: "%.2f")")
                    }
                .navigationBarTitle("We Split")
                    
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//import SwiftUI

//struct ContentView: View {
//    @State private var name = ""
//
//    var body: some View {
//        Form {
//            Section{
//                TextField("Enter your name", text: $name)
//                Text("Your name is \(name)")
//
//            }
//
//            ForEach(0..<100) { number in
//            Text("Row \(number)")
//            }
//
//        }
//    }
//}
//
//struct ContentView: View {
//    let students = ["Piyush","piyushxbajaj","smrtdvlpr"]
//    @State private var  selectedStudent = 0
//    var body: some View{
//        VStack{
//            Picker("Select your student",selection: $selectedStudent){
//                ForEach(0..<students.count){
//                    Text(self.students[$0])
//                }
//
//            }
//            Text("You chose # \(students[selectedStudent])")
//        }
//    }
//}
