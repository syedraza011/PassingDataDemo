//
//  ContentView.swift
//  PassingDataDemo
//
//  Created by Syed Raza on 6/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var change = false
    @ObservedObject var viewModel : passingDataViewModel
//    init (change: Bool = false , viewmodel: passingDataViewModel){
//        self.change = change
//
//    }
    var body: some View {
        
//        NavigationView {
//            VStack {
//                List (viewModel.persons) { person in
//                    HStack(spacing: 5){
//                        Text(person.firstName)
//                        Text(person.lastName)
//                    }
//                }
//            }
//
//            .navigationTitle("Globe")
//            .navigationBarItems(trailing: Button ("refresh", action:{
//                viewModel.fetchperson()
//            }))
//        }
        
        //--trying
        NavigationView {
            VStack (spacing: 10) {
               
                List(viewModel.days) { day in
                    HStack(spacing: 5) {
                        Text(day.day)
                            .font(.headline)
                            .bold()
                        Text(day.lowTemp)
                            .foregroundColor(.blue)
                        Text(day.highTemp)
                            .foregroundColor(.red)
                       
                    }
                }
                .listStyle(.plain)
               
            }
            .navigationTitle("Globe")
            .navigationBarItems(trailing: Button ("Refresh") {
                viewModel.fetchDay()
            })
        
//        NavigationView {
//            VStack {
//                List (viewModel.days) { day in
//                    HStack(spacing: 5){
//                        Text(day.day)
//                        Text(day.highTemp)
//                        Text(day.lowTemp)
//                    }
//                }
//            }
//
//            .navigationTitle("Globe")
//            .navigationBarItems(trailing: Button ("refresh", action:{
//                viewModel.fetchDay()
//            }))
        }
        //----
    }
}



/**
 
 var body: some View {
     Navigationview {
         VStack {
             GlobeView(change: $change)
         }
         .navigationTitle("Globe")
     }
 }
}

struct GlobeView: View {
 @Binding var change: Bool
 var body : some View {
     VStack {
         Image(systemName: "globe")
             .resizable()
             .frame(width: 200, height: 200)
             .imageScale(.large)
             .foregroundColor(.accentColor)
             .onTapGesture {
                 change.toggle()
           
                 
             }
             .preferredColorScheme(change ? .dark : .light)
         Text("hello World")
     }
     .padding()
 }
}

 */


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
    
        ContentView(viewModel: passingDataViewModel())
    }
}
