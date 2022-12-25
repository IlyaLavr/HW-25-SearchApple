//
//  MusicPlayerView.swift
//  HW-25 SearchApple
//
//  Created by Илья on 24.12.2022.
//

import SwiftUI

struct MusicPlayerView: View {
    var animation: Namespace.ID
    @Binding var expand: Bool
    var height = UIScreen.main.bounds.height / 3
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    @State var volume: CGFloat = 0
    @State var offset: CGFloat = 0
    
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 60 : 0, height: expand ? 4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? safeArea?.top : 0)
                .padding(.vertical, expand ? 30 : 0)
            HStack(spacing: 15) {
                
                if expand{Spacer()}
                
                Image("3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ? height : 55, height: expand ? height : 55)
                    .cornerRadius(15)
                
                if !expand {
                    Text("Lady Gaga")
                        .font(.title2)
                        .fontWeight(.bold)
                        .matchedGeometryEffect(id: "label", in: animation)
                }
                
                Spacer(minLength: 0)
                
                if !expand {
                    Button(action: {}, label: {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                }
                
            }
            .padding(.horizontal)
            
            VStack(spacing: 15) {
                Spacer(minLength: 0)
                HStack {
                    if expand  {
                        VStack(alignment: .leading) {
                            Text("Meat Fish Eat")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.title3)
                            HStack(spacing: 100) {
                                Text("Lady Gaga")
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .matchedGeometryEffect(id: "label", in: animation)
                                Spacer(minLength: 0)
                                
                                Button(action: {}) {
                                    Image(systemName: "ellipsis.circle.fill")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        
                    }
                    
                }
                .padding()
                .padding(.top, 20)
                HStack {
                    VStack {
                        ZStack(alignment: .leading) {
                           
                            //Полоса воспроизведения
                            Capsule()
                                .fill(.white)
                                .frame(height: 4)
                            Circle()
                                .fill(.white)
                                .frame(width: 10, height: 10)
                        }
                        //Расстояние от краев
                        .padding([.leading, .trailing], 20)
                        HStack(spacing: 300) {
                            Text("00:00")
                                .font(.footnote)
                                .foregroundColor(Color.white)
                            Text("-03:48")
                                .font(.footnote)
                                .foregroundColor(Color.white)
                        }
                        
                    }
                    }
                   
                HStack(spacing: 40) {
                    Button(action: {}, label: {
                        Image(systemName: "backward.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    })
                    .padding()
                    
                    Button(action: {}, label: {
                        Image(systemName: "pause.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    })
                    .padding()
                    
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    })
                    .padding()
                }
               
                
                Spacer(minLength: 0)
                
                HStack(spacing: 15) {
                    Image(systemName: "speaker.fill")
                        .foregroundColor(.white)
                    Slider(value: $volume)
                        .accentColor(.white)
                    Image(systemName: "speaker.wave.2.fill")
                        .foregroundColor(.white)
                }
                .padding()
                
                HStack(spacing: 90) {
                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                }
                .padding(.bottom, safeArea?.bottom == 0 ? 60 : safeArea?.bottom)
            }
            .frame(height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
        .frame(maxHeight: expand ? .infinity : 80)
        .background(
            VStack(spacing: 0) {
                if !expand {
                    BlurView()
                    Divider()
                } else {
                    BlurViewAllScreen()
                }
                
            }
                .onTapGesture(perform: {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.9, blendDuration: 0.5)) {
                        expand = true
                    }
                })
        )
        .cornerRadius(expand ? 20 : 0)
        .offset(y: expand ? 0 : 0)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(ended(value:)).onChanged(changed(value:)))
        .ignoresSafeArea()
    }
        
    func changed(value: DragGesture.Value) {
        if value.translation.height > 0 && expand {
            offset = value.translation.height
        }
    }
    
    func ended(value: DragGesture.Value) {
        withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 0.9, blendDuration: 1)) {
            if value.translation.height > height {
                expand = false
            }
            offset = 0
        }
    }
}
