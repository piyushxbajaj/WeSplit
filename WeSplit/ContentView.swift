//
//  ContentView.swift
//  WeSplit
//
//  Created by Piyush Bajaj on 2/23/20.
//  Copyright © 2020 Piyush Bajaj. All rights reserved.
//

import SwiftUI

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

struct ContentView: View {
    let students = ["Piyush","piyushxbajaj","smrtdvlpr"]
    @State private var  selectedStudent = 0
    var body: some View{
        VStack{
            Picker("Select your student",selection: $selectedStudent){
                ForEach(0..<students.count){
                    Text(self.students[$0])
                }
                
            }
            Text("You chose # \(students[selectedStudent])")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


