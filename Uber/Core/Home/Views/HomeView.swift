//
//  HomeView.swift
//  Uber
//
//  Created by Shivangi Srivastava on 6/18/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showLocationSearchView = false
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()
            
            if showLocationSearchView {
                LocationSearchView()
            }
            else{
                LocationSearchActivationView()
                    .padding(.top, 72 )
                    .onTapGesture {
                        withAnimation(.spring){
                            showLocationSearchView.toggle()
                        }
                    }
            }
            
            MapViewActionButton(showLocationSearchView: $showLocationSearchView)
                .padding(.leading)
                .padding(.top, 4)
             
        }
    }
}

#Preview {
    HomeView()
}
 
