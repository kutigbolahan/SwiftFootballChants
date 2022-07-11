//
//  ContentView.swift
//  FootballChants
//
//  Created by GB on 7/4/22.
//

import SwiftUI

struct ContentView: View {
    let team: Team
    var body: some View {
      
            VStack {
                Text("Hello, world!")
                    .padding()
              
                    Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    Form {
                        Text("Content")
                 
                    .searchable(text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=$text@*/.constant("")/*@END_MENU_TOKEN@*/, placement: /*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
                }
               
            
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(team: <#Team#>)
    }
}
