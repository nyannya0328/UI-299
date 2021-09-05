//
//  CaruoselBodyView.swift
//  CaruoselBodyView
//
//  Created by nyannyan0328 on 2021/09/05.
//

import SwiftUI

struct CaruoselBodyView: View {
    var index : Int
    
    @State var offset : CGFloat = 0
    var body: some View {
        GeometryReader{proxy in
            let size = proxy.size
            
            ZStack{
                
                
                Image("p\(index)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width - 10, height: size.height / 1.3)
                    .cornerRadius(10)
                
                
                VStack{
                    
                    VStack{
                        
               
                        
                        
                        Text("Animal is **Amazing**")
                            .font(.title.bold())
                            .foregroundColor(.white)
                            .kerning(1.3)
                        
                        Text("Animal.............")
                            .font(.system(size: 30, weight: .ultraLight))
                        
                            
                        
                            
                        
                    }
                    .padding(.all,8)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .foregroundStyle(.white)
                    Spacer()
                    
                    
                    VStack(spacing:20){
                        
                        HStack{
                            
                            
                            Image("logo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                            
                            
                            VStack(alignment: .leading, spacing: 15) {
                                
                                Text("Girl")
                                    .font(.callout.weight(.bold))
                                
                                Text("Cool")
                                    .font(.caption2.weight(.thin))
                                
                                
                            }
                            .foregroundStyle(.white)
                            
                            
                        }
                      .frame(maxWidth: .infinity,alignment: .leading)
                        
                        HStack{
                            
                            
                            VStack{
                                
                                Text("1300")
                                    .font(.title)
                                
                                
                                
                                Text("Post")
                                    .font(.title2.bold())
                                    
                            }
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            
                            VStack{
                                
                                Text("1500")
                                    .font(.title)
                                
                                
                                
                                Text("Following")
                                    .font(.title2.bold())
                                    
                            }
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            
                            
                            
                            VStack{
                                
                                Text("10k")
                                    .font(.title)
                                
                                
                                
                                Text("Follower")
                                    .font(.title2.bold())
                                    
                            }
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            
                            
                            
                        }
                        
                        
                        
                    }
                    .padding(20)
                    .padding(.horizontal)
                    .background(
                        
                        LinearGradient(colors: [.red.opacity(0.3),.green.opacity(0.3),.orange.opacity(0.3),.purple.opacity(0.3)], startPoint: .leading, endPoint: .trailing)
                        
                        
                        
                        
                        ,in: RoundedRectangle(cornerRadius: 20))
                    
                    
                    
                    
                }
                
                
                
                
                
                
            }
            .frame(width: size.width - 10, height: size.height / 1.3)
            .frame(width: size.width, height: size.height)
         
        }
        .tag("p\(index)")
        .rotation3DEffect(.init(degrees: getProgeress() * 90), axis: (x: 0, y: 1, z: 0), anchor: offset  > 0 ? .leading : .trailing, anchorZ: 0, perspective: 1)
        .modifier(ScrollViewOffsetModifier(offset: $offset, anchorPoint: .leading))
    }
    
    func getProgeress()->CGFloat{
        
        let progress = -offset / UIScreen.main.bounds.width
        
        return progress
        
    }
    
}

struct CaruoselBodyView_Previews: PreviewProvider {
    static var previews: some View {
        CurouselMain()
    }
}
