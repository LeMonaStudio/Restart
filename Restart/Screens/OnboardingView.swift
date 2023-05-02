//
//  OnboardingView.swift
//  Restart
//
//  Created by Musa Lawrence on 5/2/23.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            Color("ColorBlue").ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                //MARK: - HEADER
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Text("""
                    It's not how much we give
                    but how much love we put into giving.
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                }
                
                //MARK: - CENTER
                Spacer()
                
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260,alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260,alignment: .center)
                    }
                    Image("character-1")
                        .imageModifier()
                        .padding(.horizontal, 20)
                }
                
                //MARK: - FOOTER
                Spacer()
                
            }
        }
        
//        Spacer()
//        ZStack {
//            Image("character-1")
//                .imageModifier()
//                .padding(.horizontal, 20)
//        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}


extension Image {
    func imageModifier() -> some View {
        return self
            .resizable()
            .scaledToFit()
    }
}
