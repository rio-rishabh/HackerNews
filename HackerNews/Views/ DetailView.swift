//
//   DetailView.swift
//  HackerNews
//
//  Created by Rishabh Sharma on 22/08/24.
//

import SwiftUI
import WebKit

struct _DetailView: View {
    
    let url : String?
    var body: some View {
        WebView(urlString: url)    }
}

#Preview {
    _DetailView(url : "https://www.google.com")
}



