//
//  HomeView.swift
//  SocialMedia
//
//  Created by PDWS on 8/16/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedTab = "Posts"
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            
            //MARK: Custom Tab Bar
            ZStack{
                
                PostView()
                    .opacity(selectedTab == "Posts" ? 1 : 0 )
                
                SettingsView()
                    .opacity(selectedTab == "Settings" ? 1 : 0)
            }
            .frame(maxWidth: .infinity , maxHeight: .infinity)
            
            CustomTabBar(selectedTab: $selectedTab)
        }
        .background(Color("bg").ignoresSafeArea(.all, edges: .all))
        .ignoresSafeArea(.all, edges: .top )
    }
}

