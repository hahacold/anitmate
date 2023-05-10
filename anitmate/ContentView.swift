//
//  ContentView.swift
//  anitmate
//
//  Created by User19 on 2023/5/10.
//

import SwiftUI

struct ContentView: View {
    @State var offset = CGSize.zero
    @State var disable = false
    let duration: Double = 2
    var body: some View {
        
        VStack {
            Button("HAHA"){
                
                withAnimation(Animation.easeInOut(duration: duration)) {
                    if(disable==false){
                        disable=true
                        offset.height += 100
                        offset.width += 100
                    
                    }
                    
                    
                }
                DispatchQueue.main.asyncAfter(deadline: .now()+duration){
                    disable=false;
                }
            }.offset(offset)
            Image(systemName: "applelogo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .offset(offset)
                .onTapGesture {
                
                    withAnimation(Animation.easeInOut(duration: duration)) {
                        if(disable==false){
                            disable=true
                            offset.height += 100
                            offset.width += 100
                        
                        }
                        
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now()+duration){
                        disable=false;
                    }
                    
                }
        }
        
        }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
