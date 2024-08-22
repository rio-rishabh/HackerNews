//
//  ContentView.swift
//  HackerNews
//
//  Created by Rishabh Sharma on 21/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: _DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("HackerNews")
        }
        .onAppear{
            networkManager.fetchData()
        }
    }
}
#Preview {
    ContentView()
}


//let posts = [
//    Post(id : "1", title: "Hello"),
//    Post(id: "2", title: "How are you doing"),
//    Post(id: "3", title: "Bonjour")
//]
