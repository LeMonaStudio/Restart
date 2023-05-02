//
//  HomeView.swift
//  Restart
//
//  Created by Musa Lawrence on 5/2/23.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("HomeView")
                .font(.largeTitle)
                .fontWeight(.black)
            
            Button(action: {
                isOnboardingViewActive = true
            }){
                Text("Return")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
