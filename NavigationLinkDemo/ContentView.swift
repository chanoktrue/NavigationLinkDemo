//
//  ContentView.swift
//  NavigationLinkDemo
//
//  Created by Thongchai Subsaidee on 1/10/21.
//

import SwiftUI

struct ContentView: View {
    
    let datas = ["A","B","C"]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(datas, id:\.self) { data in
                    NavigationLink {
                        DetailView(name: data)
                    } label: {
                        Text(data)
                    }
                }
            }
            .navigationTitle(Text("NavigationView"))
        }
    }
}


struct DetailView: View {
    var name: String
    var body: some View {
        Text("name = \(name)")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
