//
//  MapNavigationTitle.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-17.
//
//
//import SwiftUI
//
//struct MapNavigationTitle: View {
//    var body: some View {
//
//        NavigationView {
//
//            List{
//                ForEach(listOfItem) {
//                    currentItem in
//                    NavigationLink(destination:
//                                    chatview(textBoxes: currentItem.textBoxes)
//                                   , label: {
//                        DetailView(item: currentItem)
//                    })
//                    .navigationBarTitle("Map",displayMode: .inline)
//
//                    .toolbar {
//                        ToolbarItemGroup(placement: .navigationBarTrailing) {
//                            NavigationLink(destination: OptionsView()) {
//                                Image(systemName: "ellipsis.circle.fill").font(.title)
//                                    .foregroundColor(.gray)
//                            }
//                        }
//                    }
//                    .toolbar {
//                        ToolbarItemGroup(placement: .navigationBarTrailing) {
//                            NavigationLink(destination: AddNewFriendView()) {
//                                Image(systemName: "person.crop.circle.fill.badge.plus").font(.title)
//                                    .foregroundColor(.gray)
//                            }
//                        }
//                    }
//                    .toolbar {
//                        ToolbarItemGroup(placement: .navigationBarLeading) {
//                            NavigationLink(destination: SearchView()) {
//                                Image(systemName: "magnifyingglass.circle.fill").font(.title)
//                                    .foregroundColor(.gray)
//                            }
//                        }
//                    }
//                    .toolbar {
//                        ToolbarItemGroup(placement: .navigationBarLeading) {
//                            NavigationLink(destination: ProfileView()) {
//                                Image(systemName: "person.crop.circle").font(.title)
//                                    .foregroundColor(.gray)
//                            }
//                        }
//                    }
//                }
//            }
//        }
//    }
//
//        struct MapNavigationTitle_Previews: PreviewProvider {
//            static var previews: some View {
//                MapNavigationTitle()
//            }
//        }
//    }
//
