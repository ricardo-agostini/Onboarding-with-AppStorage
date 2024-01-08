//
//  IntroView.swift
//  Onboarding with AppStorege
//
//  Created by Ricardo de Agostini Neto on 04/01/24.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    
    var body: some View {

        ZStack {
            RadialGradient(
                colors: [Color.purple, Color.blue], center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
        }
        
        
        if currentUserSignedIn {
            Text("Profile View")
        }
        else {
            Text("Onboarding View")
        }
        
        
    }
}

#Preview {
    IntroView()
}
