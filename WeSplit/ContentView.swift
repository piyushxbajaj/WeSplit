//
//  ContentView.swift
//  WeSplit
//
//  Created by Piyush Bajaj on 2/23/20.
//  Copyright © 2020 Piyush Bajaj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var tapCount = 0
    var body: some View {
        Button("Tap COunt : \(tapCount)"){
            self.tapCount += 1
            
        }
//        Form{
//            Group{
//                Text("Hello World")
//                Text("Hello World")
//                Text("Hello World")
//                Text("Hello World")
//                Text("Hello World")
//            }
//            Group{
//                Text("Hello World")
//                Text("Hello World")
//                Text("Hello World")
//                Text("Hello World")
//                Text("Hello World")
//            }
//        NavigationView{
//            Form{
//                Section{
//                    Text("Hello World")
//                }
//                .navigationBarTitle(Text("Navigation Bar"),displayMode: .inline)
//                .navigationBarTitle(Text("Navigation Bar"))
//                .navigationBarTitle("Nav Bar")
//        }
//
//    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
