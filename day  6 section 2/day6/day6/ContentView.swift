//
//  ContentView.swift
//  day6
//
//  Created by Ali Al-Otaibi on 19/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var chooseColors = [Color.black , Color.gray , Color.blue , Color.green]
    
    @State var selectedColor = Color.clear
    
    var body: some View {
        NavigationView {
            VStack {
                Text("دفتز اليوميات ").bold().italic().font(.largeTitle).frame(height:300)
                Divider()
                Text("اختر اللون المفضل").bold().font(.title)
                
                Text("ماذا تريد ان تكتب؟")
                
                HStack {
                    ForEach(chooseColors, id: \.self) { color in
                        Circle()
                            .foregroundColor(color)
                            .onTapGesture {
                                selectedColor = color
                            }
                    }
                }
                Spacer()
                
                
                TextField("اكتب هنا", text:$text)
                Spacer()
                NavigationLink(destination:
                                ZStack {
                    selectedColor.ignoresSafeArea()
                    Text(text).bold().italic().foregroundColor(.red)
                }) {
                    Text("حفظ")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
