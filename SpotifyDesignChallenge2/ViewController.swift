//
//  ViewController.swift
//  SpotifyDesignChallenge2
//
//  Created by Edwin Cardenas on 3/24/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
}

extension ViewController {
    func setupViews() {
        let image = Factory.makeImageView(named: "rush")
        let trackLabel = Factory.makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = Factory.makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        
        let playButton = Factory.makePlayButton()
        let previewStartLabel = Factory.makePreviewLabel(withText: "0:00")
        let previewEndLabel = Factory.makePreviewLabel(withText: "0:30")
        let progressView = Factory.makeProgressView()
        
        let spotifyButton = Factory.makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        
        view.addSubview(image)
        view.addSubview(trackLabel)
        view.addSubview(albumLabel)
        
        view.addSubview(playButton)
        view.addSubview(previewStartLabel)
        view.addSubview(progressView)
        view.addSubview(previewEndLabel)
        
        view.addSubview(spotifyButton)
        
        // image
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.heightAnchor.constraint(equalTo: image.widthAnchor, multiplier: 1),
            image.widthAnchor.constraint(equalToConstant: view.bounds.width) // important
        ])
        
        // trackLabel
        NSLayoutConstraint.activate([
            trackLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 8),
            trackLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // albumLabel
        NSLayoutConstraint.activate([
            albumLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: 8),
            albumLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // playButton
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: 8),
            playButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            playButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            playButton.widthAnchor.constraint(equalToConstant: buttonHeight)
        ])
        
        // previewStartLabel
        NSLayoutConstraint.activate([
            previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 8)
        ])
        
        // progressView
        NSLayoutConstraint.activate([
            progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: 8)
        ])
        
        // previewEndLabel
        NSLayoutConstraint.activate([
            previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            previewEndLabel.leadingAnchor.constraint(equalTo: progressView.trailingAnchor, constant: 8),
            previewEndLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8)
        ])
        
        // spotifyButton
        NSLayoutConstraint.activate([
            spotifyButton.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 32),
            spotifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
