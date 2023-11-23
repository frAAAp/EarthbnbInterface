//
//  ContentView.swift
//  AirbnbInterface
//
//  Created by Francesca Pia Gargiulo on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State private var searchText = "" //I use this for the search bar
    @State private var selectedTab1 = 3
    @State private var selectedTab2 = 2
    
    @State private var didTap1:Bool = false //for the categories button
    @State private var didTap2:Bool = false
    @State private var didTap3:Bool = false
    @State private var didTap4:Bool = false
    @State private var didTap5:Bool = false
    
    
    var alloggio = HouseModel()
    var categoria = CategoryModel()
    
    var searchBar: some View {
        HStack {
           
            Image(systemName: "magnifyingglass").foregroundColor(.black).accessibilityHidden(true)
                TextField("Where do you wanna go?", text: $searchText)
                .font(Font.system(size: 21))
        }
        .padding(7)
        .background(Color.white)
        .cornerRadius(50).shadow(color: .gray.opacity(0.3), radius: 10)
        
    } //this is my customised search bar

    
    var body: some View {
        NavigationStack {
            
            ZStack{
                Color.white.ignoresSafeArea() //for the background
                VStack{
                    
                    VStack{
                        HStack{
                            searchBar
                                .padding(.leading, 15)
                                .padding(.trailing, 15)
                                .background(Color.white).background(Color.gray)
                                .padding(.top, 10).accessibilityLabel("Searchbar") //more details for the searchbar
                            
                            VStack{
                                
                                Spacer().frame(height: 10)
                                Button {
                                    print("QUATERNA")
                                } label: {
                                    Image(systemName: "slider.horizontal.3").foregroundStyle(.black)
                                        .overlay(Circle()
                                            .stroke(Color.gray.opacity(0.7), lineWidth: 1).frame(width: 40,height: 40))
                                }
                            }.accessibilityAddTraits([.isButton])
                                .accessibilityLabel("Filters") //filter button
                            
                            Spacer().frame(width: 25)
                            
                        }//I made this HStack to align the search bar and the filter button
                        
                        Spacer().frame(height: 15)
                    }
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            
                                Button (action: {
                                    self.didTap1 = true
                                }) {
                                    VStack{
                                        Image(systemName: "mountain.2")
                                        Text("Mountain").font(.system(size: 14))
                                            .padding()
                                            .background(.white)
                                    }
                                }.tint(didTap1 ? Color.black : Color.black.opacity(0.3)).fixedSize(horizontal: true, vertical: true)
                                .frame(maxHeight: 50).shadow(color: .gray.opacity(0.2), radius: 0, x: 0, y: 1).accessibilityAddTraits([.isButton]).accessibilityLabel("Mountain")
                            
                            Button (action: {
                                self.didTap2 = true
                            }) {
                                VStack{
                                    Image(systemName: "house.lodge")
                                    Text("Countryside").font(.system(size: 14))
                                        .padding()
                                        .background(.white)
                                }
                            }.tint(didTap2 ? Color.black : Color.black.opacity(0.3)).fixedSize(horizontal: true, vertical: true)
                               .frame(maxHeight: 50).shadow(color: .gray.opacity(0.2), radius: 0, x: 0, y: 1).accessibilityAddTraits([.isButton]).accessibilityLabel("Countryside")
                    
                            Button (action: {
                                self.didTap3 = true
                            }) {
                                VStack{
                                    Image(systemName: "photo.artframe")
                                    Text("Art City").font(.system(size: 14))
                                        .padding()
                                        .background(.white)
                                }
                            }.tint(didTap3 ? Color.black : Color.black.opacity(0.3)).fixedSize(horizontal: true, vertical: true)
                               .frame(maxHeight: 50).shadow(color: .gray.opacity(0.2), radius: 0, x: 0, y: 1).accessibilityAddTraits([.isButton]).accessibilityLabel("Art City")
                                
                            
                            Button (action: {
                                self.didTap4 = true
                            }) {
                                VStack{
                                    Image(systemName: "tent")
                                    Text("Camping").font(.system(size: 14))
                                        .padding()
                                        .background(.white)
                                }
                            }.tint(didTap4 ? Color.black : Color.black.opacity(0.3)).fixedSize(horizontal: true, vertical: true)
                               .frame(maxHeight: 50).shadow(color: .gray.opacity(0.2), radius: 0, x: 0, y: 1).accessibilityAddTraits([.isButton]).accessibilityLabel("Camping")
                            
                            
                        }.padding()
                        
                    }//buttons for the categories
                    
                   
                   
                    ScrollView(showsIndicators: false){
                        
                        VStack{ //FORSE
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack{
                                    
                                    Spacer().frame(width: 5)
                                    TabView(selection: $selectedTab1){
                                        Image("casuccia2").resizable().aspectRatio(contentMode: .fill).frame(width: 350, height: 350).clipShape(RoundedRectangle(cornerRadius: 15)).accessibilityLabel("Stone cabin with wooden rooftop. It has two floors and a balcony. Scroll right for more.")
                                            .tag(0)
                                        
                                        Image("jetty").resizable().aspectRatio(contentMode: .fill).frame(width: 350, height: 350).clipShape(RoundedRectangle(cornerRadius: 15)).accessibilityLabel("Next to the structure there is a small wooden jetty without railing around it. Scroll right for more.")
                                            .tag(1)
                                        
                                        Image("interno2").resizable().aspectRatio(contentMode: .fill).frame(width: 350, height: 350).clipShape(RoundedRectangle(cornerRadius: 15)).accessibilityLabel("There is a cozy bedroom with a double bed. There are two nightstands. This is the last photo for this structure. Scroll left for the others.")
                                            .tag(2)
                                        
                                    }
                                    .frame(width: 350, height: 350)
                                    .tabViewStyle(PageTabViewStyle())
                                }//scrollable photos
                                
                            }
                            
                            
                                VStack{
                                    HStack{
                                        Text("Ostersund, Sweden").bold().accessibilityLabel("The Cabin is in Ostersund, Sweden.")
                                        Spacer()
                                        
                                        HStack{
                                            Image(systemName: "star.fill").foregroundColor(.black).accessibilityHidden(true)
                                            Text("3.55").accessibilityLabel("The rating is 3.55 out of 5.")
                                        }
                                    }
                                    
                                    HStack{
                                        Text("Lakeside").opacity(0.7).accessibilityLabel("It's situated directly on the lakeside.")
                                        Spacer()
                                    }
                                    
                                    HStack{
                                        Text("19 - 20 Nov - Individual Host").opacity(0.7).accessibilityLabel("The stay is from the nineteenth to twentieth of November. It's managed by an individual host.")
                                        Spacer()
                                    }
                                    
                                    Spacer().frame(height: 10)
                                    
                                    HStack{
                                        Text("300 $").bold().underline()
                                        Text("total").accessibilityHidden(true).opacity(0.8)
                                        Spacer()
                                    }.accessibilityLabel("The price is 300$. Scroll down to see more structures.")
                                    
                                    Spacer().frame(height: 25)
                                    
                                }.padding()
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack{
                                    
                                    Spacer().frame(width: 5)
                                    TabView(selection: $selectedTab2){
                                        
                                        Image("casuccia3").resizable().aspectRatio(contentMode: .fill).frame(width: 350, height: 350).clipShape(RoundedRectangle(cornerRadius: 15)).accessibilityLabel("Big hotel on the seaside. You can go on the private beach with a small flight of stairs that has railing. Scroll right for more.")
                                            .tag(0)
                                        
                                        Image("interno3").resizable().aspectRatio(contentMode: .fill).frame(width: 350, height: 350).clipShape(RoundedRectangle(cornerRadius: 15)).accessibilityLabel("There is a beautiful swimming pool with deckchairs and beach umbrellas. This is the last photo for this structure. Scroll left for the others.")
                                            .tag(1)
                                      
                                    }
                                    .frame(width: 350, height: 350)
                                    .tabViewStyle(PageTabViewStyle())
                                }//scrollable photos
                                
                                VStack{
                                    HStack{
                                        Text("Zanzibar City, Zanzibar").bold().accessibilityLabel("The hotel is in Zanzibar City, Zanzibar.")
                                        Spacer()
                                        
                                        HStack{
                                            Image(systemName: "star.fill").foregroundColor(.black).accessibilityHidden(true)
                                            Text("4.58").accessibilityLabel("The rating is 4.58 out of 5.")
                                        }
                                    }
                                    
                                    HStack{
                                        Text("Seaside").opacity(0.7)
                                        Spacer()
                                    }.accessibilityLabel("It's on the seaside.")
                                    
                                    HStack{
                                        Text("1 - 4 Jul - Special Host").opacity(0.7)
                                        Spacer()
                                    }.accessibilityLabel("The stay is from the first to fourth of July.")
                                    
                                    Spacer().frame(height: 10)
                                    
                                    HStack{
                                        Text("1000 $").bold().underline().accessibilityLabel("The price is 1000$. This is the last structure. Scroll up for the others.")
                                        
                                        Text("total").accessibilityHidden(true).opacity(0.8)
                                        Spacer()
                                    }
                                    Spacer().frame(height: 25)
                                    
                                }.padding()
                            }
                            
                        }.padding()
                    }
                }
                
                VStack{
                    Group{
                        
                        Button {
                            print("TERNO")
                        } label: {
                            Label("Map", systemImage: "map")
                                .padding()
                                .background(Color.black)
                                .clipShape(Capsule())
                        }.accessibilityAddTraits([.isButton]).accessibilityLabel("Map") //map button
                        
                        
                        
                    }.foregroundColor(.white).frame(maxHeight: .infinity, alignment: .bottom) //the group is needed to modify the whole button. Ah also the position is here so it overlaps the stuff from the vertical scrollbar
                    Spacer().frame(height: 25)
                }
            }
            
        }
        
    }
    

    }


#Preview {
    ContentView()
}

//100 days of swiftui
