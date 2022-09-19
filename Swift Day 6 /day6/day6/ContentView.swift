//
//  ContentView.swift
//  day6
//
//  Created by Ali Al-Otaibi on 19/09/2022.
//

import SwiftUI
struct  Student: Identifiable {
    let id = UUID()
    
    let name: String
    let year: Int
    let age: Int
}

struct ContentView: View {
    var students = [
        Student(name: "Sarah Fahad", year: 2, age: 20),
        Student(name: "Norah Mohammed", year: 4, age: 22),
        Student(name: "Rashid Ali", year: 1 , age: 18)
    ]
    var info = ""
    var body: some View {
        VStack {
            Image("id").resizable().scaledToFit()
            Text("سجل الطلبه").bold().italic().frame(width:300, height:300, alignment: .center).font(.system(size: 40))
            Divider()
            
            ForEach(students) {
                student in
                VStack{
                    Text(student.name).bold().italic()
                    
                    
                    Text("Year: \(student.year)").bold().italic()
                    
                    Text(" Age : \(student.age)").bold().italic()
                    
                    Divider()
                }
            }
            HStack {
                Text(" 3:  عدد الطلبه المسجلين")
                Image(systemName:"info.circle.fill").foregroundColor(.blue)
                
            }
        }
        
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
            
