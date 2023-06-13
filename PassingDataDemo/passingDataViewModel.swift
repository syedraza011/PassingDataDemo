//
//  passingDataViewModel.swift
//  PassingDataDemo
//
//  Created by Syed Raza on 6/11/23.
//

import Foundation

struct DayData: Identifiable {
    var id=UUID()
    let day:String
    let highTemp: String
    let lowTemp:String
    static let mockDayData=[
    DayData(day: "Monday", highTemp: "H:43.57°F", lowTemp: "L:34.50°F"),
    DayData(day: "Tuesday", highTemp: "H:43.57°F", lowTemp: "L:34.50°F"),
    DayData(day: "Wednesday", highTemp: "H:43.57°F", lowTemp: "L:34.50°F"),
    DayData(day: "Thursday", highTemp: "H:43.57°F", lowTemp: "L:34.50°F"),
    DayData(day: "Friday", highTemp: "H:43.57°F", lowTemp: "L:34.50°F"),
    DayData(day: "Saturday", highTemp: "H:43.57°F", lowTemp: "L:34.50°F"),
    DayData(day: "Sunday", highTemp: "H:43.57°F", lowTemp: "L:34.50°F")

    
    ]
}

class  passingDataViewModel: ObservableObject {
    @Published var days : [ DayData] = [DayData( day:"Monday", highTemp: "H:43.57°F", lowTemp: "L:34.50°F")]

    func fetchDay (){
        DispatchQueue.main.asyncAfter(deadline:.now()+1){
            self.days=DayData.mockDayData
        }
    }
    
}




struct Person: Identifiable {
    let id = UUID()
    let firstName:String
    let lastName: String
    static let mockPerson = [
        Person (firstName: "John", lastName: "Doe"),
        Person (firstName: "Jonny", lastName: "Doe"),
        Person (firstName: "John", lastName: "Din"),
        Person (firstName: "raza", lastName: "Syed")
    
    ]
    
}
//class  passingDataViewModel: ObservableObject {
//    @Published var persons : [Person] = [Person (firstName: "Sammy", lastName: "Dooles")]
//
//    func fetchperson (){
//        DispatchQueue.main.asyncAfter(deadline:.now()+1){
//            self.persons=Person.mockPerson
//        }
//    }
//    
//}
