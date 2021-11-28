//
//  MainView.swift
//  Hugging
//
//  Created by tilltue on 2021/11/28.
//  Copyright © 2021 tilltue. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button {
                print("bottom button")
            } label: {
                Image(systemName: "plus")
                    .padding()
                    .accentColor(.white)
                    .background(.black)
                    .clipShape(Circle())
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
