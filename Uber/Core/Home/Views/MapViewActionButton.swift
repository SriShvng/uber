//
//  MapViewActionButton.swift
//  Uber
//
//  Created by Shivangi Srivastava on 6/21/24.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var showLocationSearchView: Bool
    
    var body: some View {
        Button {
            withAnimation(.spring){
                showLocationSearchView.toggle()
            }
            
        } label:{
            Image (systemName: showLocationSearchView ? "arrow.left" : "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding ()
                .background (.white)
                .clipShape (Circle())
                .shadow (color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        }
    }

#Preview {
    MapViewActionButton(showLocationSearchView: .constant(true))
}
