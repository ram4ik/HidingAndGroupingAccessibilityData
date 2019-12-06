//
//  ContentView.swift
//  HidingAndGroupingAccessibilityData
//
//  Created by ramil on 06.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(decorative: "panda-4418773_640")
                .accessibility(hidden: true)
            Text("Your score is")
            Text("1000")
                .font(.title)
        }
        //.accessibilityElement(children: .combine)
        .accessibilityElement(children: .ignore)
        .accessibility(label: Text("Your score is 1000"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
