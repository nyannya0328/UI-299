//
//  ScrollViewOffsetModifier.swift
//  ScrollViewOffsetModifier
//
//  Created by nyannyan0328 on 2021/09/05.
//

import SwiftUI

struct ScrollViewOffsetModifier: ViewModifier {
    @Binding var offset : CGFloat
    var anchorPoint : Anchor = .top
    func body(content: Content) -> some View {
        content
            .overlay(
                
                
                GeometryReader{proxy -> Color in
                    
                    
                    let frame = proxy.frame(in: .global)
                    
                   
                    
                    DispatchQueue.main.async {
                        
                        switch anchorPoint {
                        case .top:
                            offset = frame.maxY
                        case .bottom:
                            offset = frame.minY
                        case .leading:
                            offset = frame.minX//min
                        case .trailing:
                            offset = frame.maxX//max
                        }
                    }
                    
                    
                    
                    return Color.clear
                    
                }
            
            )
        
    }
}
enum Anchor{
    
    case top
    case bottom
    case leading
   case trailing

}
