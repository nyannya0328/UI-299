//
//  CurouselMain.swift
//  CurouselMain
//
//  Created by nyannyan0328 on 2021/09/05.
//

import SwiftUI

struct CurouselMain: View {
    @State var currentTab = "p1"
    var body: some View {
        ZStack{
            
       
                
                GeometryReader{proxy in
                    
                    let size = proxy.size
                    
                    
                    Image(currentTab)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width, height: size.height)
                    
                    
                    
                }
                .ignoresSafeArea()
                .overlay(.ultraThinMaterial)
                .colorScheme(.dark)
            
            TabView(selection:$currentTab){
                
                ForEach(1...6,id:\.self){index in
                    
                    
                    CaruoselBodyView(index: index)
                    
                }
                
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
    }
}

struct CurouselMain_Previews: PreviewProvider {
    static var previews: some View {
        CurouselMain()
    }
}
