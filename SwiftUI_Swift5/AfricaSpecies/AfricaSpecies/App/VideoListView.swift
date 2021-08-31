//
//  VideoListView.swift
//  VideoListView
//
//  Created by Dustin Trinh on 2021-08-30.
//

import SwiftUI

struct VideoListView: View {
    //MARK: PROPERTIES
    //Add @State in order to shuffle the videos
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            List{
                ForEach(videos){ vid in
                    NavigationLink(destination: VideoPlayerView(videoSelected: vid.id, videoTitle: vid.name)) {
                        VideoListItemView(video: vid)
                            .padding(.vertical, 8)
                    }
                    
                }
            }//:LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }){
                        Image(systemName: "shuffle")
                    }
                }
            }//:TOOLBAR
        }//:NAVIGATION
    }
}

    //MARK: PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
