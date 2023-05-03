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
        ZStack {
            
            VStack(spacing: 20){
                
                //MARK: - HEADER
                Spacer()
                
                ZStack {
                    CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                    Image("character-2")
                        .imageModifier()
                        .padding(.horizontal, 20)
                }
                
                //MARK: - CENTER
                
                Text("""
                The time that leads to mastery is
                dependent on the intensity of our focus.
                """)
                .font(.title3)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(.vertical, 20)
                
                //MARK: - FOOTER
                Spacer()
                
                Button(action: {
                    isOnboardingViewActive = true
                }){
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .iconModifier()
                    Text("Restart")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.heavy)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                
            }
        }
        .padding(20)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
