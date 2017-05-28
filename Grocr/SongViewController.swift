//
//  SongViewController.swift
//  Grocr
//
//  Created by 迦南 on 5/16/17.
//  Copyright © 2017 Razeware LLC. All rights reserved.
//

import UIKit
import Firebase
import Foundation
import StoreKit
import MediaPlayer
import Alamofire

class SongViewController: UIViewController, UITextFieldDelegate {
    
    var currentUserRef: DatabaseReference!
    var currentUserTagRef: DatabaseReference!
    let userProfilesRef: DatabaseReference! = Database.database().reference(withPath: "userProfiles")
    let storage = Storage.storage()
    let storageRef: StorageReference! = Storage.storage().reference()
    var currentUser: TagifyUser!
    var player: AVPlayer!
    var didCheckAndSuggestAppleMusicSignUp = false
    var didAskForMediaLibraryAccess = false
    var storefrontId = "143441"  // Default region is USA
    var applicationMusicPlayer = MPMusicPlayerController.applicationMusicPlayer()
    var itunesSongList = [Song]()
    
    
    @IBOutlet weak var searchSongTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    let songCellIdentifier = "SongCell"
    @IBOutlet weak var tagView: UIView!
    @IBOutlet weak var tagViewSongImageView: UIImageView!
    @IBOutlet weak var tagViewSongLabel: UILabel!
    @IBOutlet weak var addTagTextField: UITextField!
    @IBOutlet weak var collectionView: CollectionView!
    let tagCellReuseIdentifier = "TagReuseCell"
    let slideAnimationDuration = 0.25
    
    @IBOutlet weak var tagViewSlideUpConstraint: NSLayoutConstraint!
    @IBOutlet weak var tagViewSlideDownConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var playButton: UIButton!
    
    var currentSelectedSong: Song = Song(name: "") {
        didSet {
            tagViewSongLabel.text = currentSelectedSong.name
            tagViewSongImageView.image = UIImage(named: currentSelectedSong.imageSource)
        }
    }
    var isPlaying = false
    let allSongNames: [String] = [
        "Bruno Mars - That's What I Like",
        "Ed Sheeran - Shape of You",
        "Magic! - Rude",
        "Bruno Mars - 24K Magic",
        "Maroon 5 - Don't Wanna Know",
        "Ariana Grande - Into You",
        "The Weeknd - The Hills",
        "Taylor Swift - Wildest Dreams",
        "Mark Ronson - Uptown Funk ft. Bruno Mars"
    ]
    let allSongTrackIds: [String] = [
        "1161504043",
        "1193701392",
        "881629103",
        "1161504024",
        "1163339802",
        "1101917079",
        "1017804205",
        "1049605376",
        "1011384691"
    ]
    var allSongList = [Song]()
    var searchedSongList = [Song]()
    var followingUserTagSongDict = [String: [String: Set<Song>]]()
    
    @IBAction func searchSongEditDidEnd(_ sender: UITextField) {
        print("End Editing! Start Searching")
        if let searchString = sender.text {
            if searchString != "" && searchString[searchString.startIndex] == "#" {
                searchedSongList = searchedSongs(fromSongSet: Set(allSongList), withHashTagString: searchString)
            } else {
                searchItunes(searchTerm: searchString) { list in
                    self.searchedSongList = list
                }
            }
            tableView.reloadData()
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        print("Pressed Return!")
        textField.resignFirstResponder()
        return true
    }
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        searchSongTextField.returnKeyType = .search
        tableView.dataSource = self
        tableView.delegate = self
        tableView.allowsSelection = true
        tableView.isUserInteractionEnabled = true
        tagViewSongImageView.layer.cornerRadius = tagViewSongImageView.frame.width/2
        collectionView.dataSource = self
        collectionView.delegate = self
        
        initializeDefaultAllSongList()
        searchedSongList = allSongList
        
        //Hide tagView initially
//        self.tagView.frame.origin.y = self.view.frame.height
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.delegate = self
        view.addGestureRecognizer(tap)  // Allows dismissal of keyboard on tap anywhere on screen besides the keyboard itself
        //set collectionViewCell to autoresize
        if let cvl = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            cvl.estimatedItemSize = CGSize(width: 78, height: 59)
        }
        Auth.auth().addStateDidChangeListener {auth, user in
            guard let user = user else { print("no user!"); return }
            self.currentUser = TagifyUser(authData: user)
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.currentUser = self.currentUser
            self.currentUserRef = Database.database().reference(withPath: "users/\(user.uid)")
            self.currentUserTagRef = Database.database().reference(withPath: "tags")
            self.initializeUserProfile(user: user)
            self.initializeCurrentUserSongList()
            self.initializeFollowingForCurrentUser()
            self.initializeUserIcon()
        }
        
        requestAppleMusicAuthorization()
        
        //try playing music from preview url
        activateBackGroundPlay()
//        let alert = UIAlertController(title: "可爱女人", message: "Do you want to listen to a music sample", preferredStyle: .actionSheet)
//        let confirmAction = UIAlertAction(title: "YES", style: .default, handler: { (action:UIAlertAction!) in
//            let urlstring = "http://audio.itunes.apple.com/apple-assets-us-std-000001/AudioPreview30/v4/70/f1/3d/70f13d0d-884b-fdd8-0d59-5182ce191930/mzaf_7077884697226858641.plus.aac.p.m4a"
//            self.playSampleMusic(withURLString: urlstring)
//        })
//        let cancelAction = UIAlertAction(title: "NO", style: .cancel, handler: nil)
//        alert.addAction(confirmAction)
//        alert.addAction(cancelAction)
//        present(alert, animated: true, completion: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        closeTagView()
    }
    
    @IBAction func showTagView(_ sender: Any) {
        dismissKeyboard()
        if let button = sender as? UIButton {
            if let superView = button.superview {
                if let cell = superView.superview as? SongTableViewCell {
                    currentSelectedSong = cell.song
                }
            }
        }
        UIView.performWithoutAnimation {
            updateCollectionView()
        }
        let origin_y = view.frame.height-self.tagView.frame.height
        tagViewSlideDownConstraint.isActive = false
        tagViewSlideUpConstraint.isActive = true
        guard let currentViewColor = view.backgroundColor else { print("Error getting current color!"); return}
        let newAlphaValue: CGFloat = 0.8
        let newColor = currentViewColor.withAlphaComponent(newAlphaValue)
        UIView.animate(withDuration: slideAnimationDuration) {
            self.tagView.frame.origin.y = origin_y
            self.view.backgroundColor = newColor
            self.navigationController?.navigationBar.alpha = newAlphaValue
        }
    }
    
    @IBAction func addTagButtonPressed(_ sender: Any) {
        if let text = addTagTextField.text {
            if text != "" {
                let (valid, errorMessage) = isValid(tag: text)
                if valid {
                    currentSelectedSong.tags.insert("\(text)")
                    let strippedHashTag = text.substring(from: text.index(text.startIndex, offsetBy: 1))
                    self.currentUserRef.child("songs/\(currentSelectedSong.key)/tags").updateChildValues([strippedHashTag: true])
                    
                    let songName = currentSelectedSong.name
                    self.currentUserTagRef.child("\(strippedHashTag)").updateChildValues([songName: true])
                    updateCollectionView()
                } else {
                    print("invalid tag")
                    let alert = UIAlertController(title: "Invalid Tag", message: errorMessage, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true)
                }
            }
        }
    }
    
    @IBAction func playButtonPressed(_ sender: Any) {
        if isPlaying {
            pausePlay()
            isPlaying = false
            playButton.setImage(UIImage(named: "playButton.png"), for: .normal)
        } else {
            continuePlay()
            isPlaying = true
            playButton.setImage(UIImage(named: "stopButton.png"), for: .normal)
        }
    }
    @IBAction func forwardButtonPressed(_ sender: Any) {
        playNext()
    }
    @IBAction func backwardButtonPressed(_ sender: Any) {
        playPrevious()
    }
    
}


//Related to TableView
extension SongViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchedSongList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: songCellIdentifier, for: indexPath) as! SongTableViewCell
        cell.songImageView.layer.cornerRadius = cell.songImageView.frame.size.width/2
        cell.song = searchedSongList[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismissKeyboard()
        tableView.deselectRow(at: indexPath, animated: true)
        if let cell = tableView.cellForRow(at: indexPath) as? SongTableViewCell {
            //requestAppleMusicAuthorization()
            searchBarSearchButtonClicked(song: cell.song)
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100;
    }
}


//Related to CollectionView
extension SongViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return currentSelectedSong.tags.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: tagCellReuseIdentifier, for: indexPath)
        cell.layer.borderWidth = 2
        if let newCell = cell as? CollectionViewCell {
            let tags = currentSelectedSong.tags
            newCell.tagLabel.text = tags[tags.index(tags.startIndex, offsetBy: indexPath.row)]
        }
        return cell
    }
    func removeTag() {
        print("current cell: \(collectionView.currentSelectedCell.tagLabel.text)")
        if let tagToRemove = collectionView.currentSelectedCell.tagLabel.text {
            self.currentSelectedSong.tags.remove(tagToRemove)
            let strippedHashTag = tagToRemove.substring(from: tagToRemove.index(tagToRemove.startIndex, offsetBy: 1))
            self.currentUserRef.child("songs/\(currentSelectedSong.key)/tags").updateChildValues([strippedHashTag: NSNull()])
            
            let songName = currentSelectedSong.name
            self.currentUserTagRef.child("\(strippedHashTag)").updateChildValues([songName: NSNull()])
            updateCollectionView()
        }
    }
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if collectionView.isFirstResponder {
            switch  action {
            case #selector(self.removeTag), #selector(self.searchSongs):
                return true
            default:
                return false
            }
        }
        return false
    }
    func updateCollectionView() {
        self.collectionView.reloadSections(IndexSet(integer: 0))
    }
    func isValid(tag: String) -> (Bool, String) {
        guard tag != "" else { return (false, "Tag should not be empty") }
        guard tag.characters.first == "#" else { return (false, "Tag should start with #") }
        guard tag[tag.index(before: tag.endIndex)] != " " else { return (false, "Tag should not end with space") }
        guard !tag.substring(from: tag.index(tag.startIndex, offsetBy: 1)).contains("#") else { return (false, "Tag should not contain # besides the first one") }
        guard !tag.contains("&") else { return (false, "Tag should not contain &") }
        return (true, "")
    }
    func closeTagView() {
        let origin_y = view.frame.height
        tagViewSlideDownConstraint.isActive = true
        tagViewSlideUpConstraint.isActive = false
        guard let current_color = self.view.backgroundColor else { return }
        UIView.animate(withDuration: slideAnimationDuration) {
            self.tagView.frame.origin.y = origin_y
            self.view.backgroundColor = current_color.withAlphaComponent(1)
            self.navigationController?.navigationBar.alpha = 1
        }
    }
}

extension SongViewController: UIGestureRecognizerDelegate { //Related to Tap Gesture
    // UIGestureRecognizerDelegate method
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        if touch.view?.isDescendant(of: self.tableView) == true {
            return false
        }
        return true
    }
    func dismissKeyboard() {
        searchSongTextField.resignFirstResponder()
        addTagTextField.resignFirstResponder()
    }
    func searchSongs() {
        let searchString = collectionView.currentSelectedCell.tagLabel.text!
        searchedSongList = songList(withSearchString: searchString)
        tableView.reloadData()
        searchSongTextField.text = searchString
        closeTagView()
        print("search songs with tag \(collectionView.currentSelectedCell.tagLabel.text!)")
    }
}

extension SongViewController { // related to search
    func songList(withSearchString searchString: String) -> [Song] {
        var searchedSongList = [Song]()
        //Existing songs
        if searchString == "" {
            searchedSongList = allSongList
        }
        //Hashtag search
        else if searchString[searchString.startIndex] == "#" {
            print("Searching Hashtag!")
            let searchStringArr = searchString.components(separatedBy: "#").dropFirst()
            for song in allSongList {
                var flag = true
                for tag in searchStringArr {
                    if !(song.tags.contains("#\(tag)")) {
                        flag = false
                    }
                }
                if (flag) {
                    searchedSongList.append(song)
                }
            }
        }
        //Itunes search
        else {
            for song in allSongList {
                if song.name.lowercased().range(of:searchString.lowercased()) != nil{
                    searchedSongList.append(song)
                }
            }
        }
        return searchedSongList
    }
    func searchedSongs(fromSongSet songSet: Set<Song>, withHashTagString hashTagString: String) -> [Song] {
        if hashTagString == "" {
            return allSongList
        }
        var result = [Song]()
        let union = hashTagString.components(separatedBy: "&")
        for hashTagSubstring in union {
            var intersection = hashTagSubstring.components(separatedBy: "#")
            intersection.remove(at: 0)
            // append # in front and remove trailing spaces
            intersection = intersection.map {"#\($0)".replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression)}
            for song in songSet {
                if song.tags.union(intersection).count == song.tags.count {
                    result.append(song)
                }
            }
        }
        return result
    }
    func getSongs(forTag tag: String, forUser user: TagifyUser) { // fill in followingUserTagSongDict
        if self.followingUserTagSongDict[user.uid] == nil {
            self.followingUserTagSongDict[user.uid] = [String: Set<Song>]()
        }
        if self.followingUserTagSongDict[user.uid]![tag] == nil {
            self.followingUserTagSongDict[user.uid]![tag] = Set<Song>()
        }
        
        Database.database().reference(withPath: "userTags").child("\(user.uid)/\(tag)").observeSingleEvent(of: .value, with: {
            (snapshot) in
            for songObj in snapshot.value as! [String: Bool] {
                let songKey = songObj.key
                Database.database().reference(withPath: "userSongs").child("\(user.uid)/\(songKey)").observeSingleEvent(of: .value, with: { (snapshot) in
                    let song = Song(name: "", key: songKey)
                    if let name = snapshot.childSnapshot(forPath: "name").value as? String {
                        song.name = name
                    }
                    if let songWriter = snapshot.childSnapshot(forPath: "songWriter").value as? String {
                        song.songWriter = songWriter
                    }
                    if let imageSource = snapshot.childSnapshot(forPath: "imageSource").value as? String {
                        song.imageSource = imageSource
                    }
                    self.followingUserTagSongDict[user.uid]?[tag]?.insert(song)
                })
            }
        })
    }
}

extension SongViewController { // two methods for initializing song lists depending on whether new user
    func initializeDefaultAllSongList() {
        allSongList = []
        for (index, song) in allSongNames.enumerated() {
            let newSong = Song(name: song, key: "\(index)")
            newSong.trackId = allSongTrackIds[index]
            newSong.tags = ["#Pop", "#Wedding", "#Shower", "#Mona Lisa"]
            if song.range(of: "Bruno Mars") != nil {
                newSong.imageSource = "BrunoMars.jpg"
            } else if song.range(of: "Magic!") != nil {
                newSong.imageSource = "Magic!.png"
            } else if song.range(of: "Taylor Swift") != nil {
                newSong.imageSource = "TaylorSwift.jpg"
            } else if song.range(of: "Maroon 5") != nil {
                newSong.imageSource = "Maroon5.jpg"
            }
            allSongList.append(newSong)
        }
    }
    func initializeAllSongList(songs: [Song]) {
        allSongList = []
        for song in songs {
            let songName = song.name
            if songName.range(of: "Bruno Mars") != nil {
                song.imageSource = "BrunoMars.jpg"
            } else if songName.range(of: "Magic!") != nil {
                song.imageSource = "Magic!.png"
            } else if songName.range(of: "Taylor Swift") != nil {
                song.imageSource = "TaylorSwift.jpg"
            } else if songName.range(of: "Maroon 5") != nil {
                song.imageSource = "Maroon5.jpg"
            }
            allSongList.append(song)
        }
    }
}

extension SongViewController { // initialize current user info with data fram database & fill in missing data in database
    func initializeFollowingForCurrentUser() {
        let currentUserFollowingRef = self.userProfilesRef.child("\(self.currentUser.uid)/following")
        currentUserFollowingRef.observeSingleEvent(of: .value, with: { (snapshot) in
            if snapshot.exists() {
                for uid in snapshot.value as! [String: Bool] {
                    if self.followingUserTagSongDict[uid.key] == nil {
                        self.followingUserTagSongDict[uid.key] = [String: Set<Song>]()
                    }
                }
            }
        })
    }
    func initializeUserProfile(user: User) {
        let currentUserProfileRef = self.userProfilesRef.child("\(self.currentUser.uid)")
        currentUserProfileRef.observeSingleEvent(of: .value, with: { (snapshot) in
            if !snapshot.hasChild("email") {
                currentUserProfileRef.child("email").setValue(user.email!)
            }
            if !snapshot.hasChild("username") {
                currentUserProfileRef.child("username").setValue(user.email!)
            } else {
                self.currentUser.username = snapshot.childSnapshot(forPath: "username").value as! String
            }
        })
    }
    func initializeCurrentUserSongList() {
        self.currentUserRef.observe(.value, with: { (snapshot) in
            if !snapshot.hasChild("email") {
                self.currentUserRef.child("email").setValue(self.currentUser.email)
            }
            if snapshot.hasChild("songs") {
                var newSongs = [Song]()
                for song in snapshot.childSnapshot(forPath: "songs").children.allObjects as! [DataSnapshot] {
                    let newSong = Song(snapshot: song)
                    newSongs.append(newSong)
                }
                self.initializeAllSongList(songs: newSongs)
                self.searchedSongList = self.allSongList
            } else {
                for song in self.allSongList {
                    self.currentUserRef.child("songs/\(song.key)").setValue(song.toAnyObject())
                }
            }
            self.tableView.reloadData()
        })
    }
    func initializeUserIcon() {
        let userIconPath = "\(Auth.auth().currentUser!.uid)/userIcon.jpg"
        let reference = storageRef.child(userIconPath)
        reference.getData(maxSize: 1 * 1024 * 1024) { data, error in
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            if let error = error {
                print(error.localizedDescription)
                appDelegate.userIcon = UIImage(named: "music.jpg")!
            } else {
                print("got image")
                appDelegate.userIcon = UIImage(data: data!)!
            }
        }
    }
    
    // To Do: To be implemented
    func getTagsForUser(_ user: TagifyUser) ->[String: String] {
        var tagToSong = [String: String]()
        return tagToSong
    }
}

extension SongViewController { //Related to Music
    
    func requestMPMediaLibraryAccessAgain() {
        let authorizationStatus = MPMediaLibrary.authorizationStatus()
        switch authorizationStatus {
        case .denied:
            print("media library access denied, we are going to request it again")
            presentMediaLibraryAccessAlert()
        case .authorized:
            print("good, we have access to media library")
        case .restricted:
            print("no media library access, restricted device, education mode?")
        case .notDetermined:
            print("media library access not determined yet. I should not see this string")
        }
    }
    
//****************** RequestAppleMusicAuthorization **********************//
    func requestAppleMusicAuthorization() {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        //Ask user for for Apple Music access
        storefrontId = appleMusicFetchStorefrontRegion()
        let authorizationStatus = SKCloudServiceController.authorizationStatus()
        switch authorizationStatus {
        case .notDetermined:
            AppleMusicAuthorizationForTheFirstTime()
        case .authorized:
            if !self.didCheckAndSuggestAppleMusicSignUp {
                self.checkAndSuggestAppleMusicSignUp()
                self.didCheckAndSuggestAppleMusicSignUp = true
            }
        case .denied:
            if !self.didAskForMediaLibraryAccess {
                presentMediaLibraryAccessAlert()
                self.didAskForMediaLibraryAccess = true
            }
            print("User has denied access to Apple Music library")
        case .restricted:
            print("user's device has restricted access, maybe education mode")
        }
    }
    func AppleMusicAuthorizationForTheFirstTime() {
        SKCloudServiceController.requestAuthorization { (status) in
            switch status {
            case .authorized:
                if !self.didCheckAndSuggestAppleMusicSignUp {
                    self.checkAndSuggestAppleMusicSignUp()
                    self.didCheckAndSuggestAppleMusicSignUp = true
                }
            case .denied:
                print("User has denied access to Apple Music library")
            case .restricted:
                print("User's device has restricted access, maybe education mode")
            case .notDetermined:
                print("Apple Music Access not determined, should not see this message")
            }
        }
    }
    func checkAndSuggestAppleMusicSignUp() {
        let controller = SKCloudServiceController()
        controller.requestCapabilities(completionHandler: ({ (capabilities, error) in
            if let error = error {
                print("Error requesting Apple Music Capability: \(error.localizedDescription)")
                DispatchQueue.main.async(execute: {
                    //self.showAlert("Capabilites error", error: "You must be an Apple Music member to use this application")
                    print("You must be an Apple Music member to use this application")
                })
            } else {
                switch capabilities {
                case SKCloudServiceCapability.addToCloudMusicLibrary:
                    print("has addToCloudMusicLibrary capability")
                case SKCloudServiceCapability.musicCatalogPlayback:
                    print("has addToCloudMusicLibrary capability")
                default:
                    print("No Apple Music Memebership, we will suggest signing up")
                    self.presentAppleMusicSignUpAlert()
                }
            }
        }))
    }
    func presentAppleMusicSignUpAlert() { // helper function to present Apple Music Sign Up alert
        let alertController = UIAlertController(title: "Would You Like to Sign Up For Apple Music", message: "...to play full songs", preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "Sign Up", style: .default, handler: { (action) in
            if let url = URL(string: "https://www.apple.com/apple-music/membership/") {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
        })
        let cancelAction = UIAlertAction(title: "Maybe Later", style: .default, handler: nil)
        alertController.addAction(cancelAction)
        alertController.addAction(confirmAction)
        alertController.preferredAction = confirmAction
        while self.presentedViewController != nil { }
        self.present(alertController, animated: true, completion: nil)
    }
    func presentMediaLibraryAccessAlert() {
        let appName = Bundle.main.infoDictionary![kCFBundleNameKey as String] as! String
        let titleString = "\"\(appName)\" Would Like to Access Apple Music And Your Media Library"
        let alertController = UIAlertController(title: titleString, message: "...to play full songs", preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
            let url = URL(string: UIApplicationOpenSettingsURLString)
            UIApplication.shared.open(url!)
        })
        let cancelAction = UIAlertAction(title: "Don't Allow", style: .default, handler: nil)
        alertController.addAction(cancelAction)
        alertController.addAction(confirmAction)
        alertController.preferredAction = confirmAction
        self.present(alertController, animated: true, completion: nil)
    }
//**********************************************************************//
    // Fetch the user's storefront ID
    func appleMusicFetchStorefrontRegion() -> String {
        let serviceController = SKCloudServiceController()
        var userStorefrontId = ""
        serviceController.requestStorefrontIdentifier(completionHandler: { (storefrontId:String?, err:Error?) in
            guard err == nil else {
                print("An error occured when getting storefront ID.")
                return
            }
            guard let storefrontId = storefrontId, storefrontId.characters.count >= 6 else {
                print("Invalid storefrontID.")
                return
            }
            let indexRange = storefrontId.index(storefrontId.startIndex, offsetBy:0)..<storefrontId.index(storefrontId.startIndex, offsetBy:5)
            let trimmedId = storefrontId.substring(with: indexRange)
            print("Success! The user's storefront ID is: \(trimmedId)")
            userStorefrontId = trimmedId
            return
        })
        return userStorefrontId
    }
    // Choose Player type & Play
    func appleMusicPlayTrackId(trackId: String) {
        applicationMusicPlayer.setQueueWithStoreIDs([trackId])
        applicationMusicPlayer.prepareToPlay()
        applicationMusicPlayer.play()
        isPlaying = true
        playButton.setImage(UIImage(named: "stopButton.png"), for: .normal)
    }
    func activateBackGroundPlay() {
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, with: .mixWithOthers)
            print("AVAudioSession Category Playback OK")
            do {
                try AVAudioSession.sharedInstance().setActive(true)
                print("AVAudioSession is Active")
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
    }
    func playSampleMusic(withURLString urlString: String) {
        if let url = URL(string: urlString) {
            let playerItem = AVPlayerItem(url: url)
            self.player = AVPlayer(playerItem:playerItem)
            self.player!.volume = 1.0
            self.player!.play()
        } else {
            print("invalid url string for sample music")
        }
    }
    //Control playback
    func pausePlay() {
        applicationMusicPlayer.pause()
        print("Music paused")
    }
    func continuePlay() {
        applicationMusicPlayer.play()
        print("Music continued")
    }
    func playNext() {
        applicationMusicPlayer.skipToNextItem()
        print("Play next song")
    }
    func playPrevious() {
        applicationMusicPlayer.skipToPreviousItem()
        print("Play previous song")
    }
    //Search iTunes and display results in table view
    func removeSpecialChars(str: String) -> String {
        let chars = Set("abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLKMNOPQRSTUVWXYZ1234567890".characters)
        return String(str.characters.filter{chars.contains($0)})
    }
    func searchItunes(searchTerm: String, callback: @escaping ([Song]) ->() ) {
        var songList = [Song]()
        let search = removeSpecialChars(str: searchTerm).replacingOccurrences(of: " ", with: "+")
        Alamofire.request("https://itunes.apple.com/search?term=\(search)&entity=song&limit=15")
            .validate()
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let responseData = response.result.value as? NSDictionary {
                        if let resultCount = responseData.value(forKey: "resultCount") as? Int {
                            if resultCount == 0 {
                                print("No result found.")
                            } else if let songResults = responseData.value(forKey: "results") as? [NSDictionary] {
                                //print("https://itunes.apple.com/search?term=\(search)&entity=song&limit=15&s=143441")
                                //print(songResults)
                                for result in songResults {
                                    let singer = result["artistName"] as! String
                                    let songName = result["trackName"] as! String
                                    let trackNum = result["trackId"] as! NSNumber
                                    let track = "\(trackNum)"
                                    let imageUrl = result["artworkUrl100"] as! String
                                    print(imageUrl)
                                    let song = Song(name: "\(singer) - \(songName)", songWriter: singer, trackId: track, imageSource: imageUrl)
                                    songList.append(song)
                                }
                                callback(songList)
                            }
                        }
                    }
                case .failure(let error):
                    //self.showAlert("Error", error: error.description)
                    print("Failed to search itunes.")
                }
        }
    }
    func searchBarSearchButtonClicked(song: Song) {
        appleMusicPlayTrackId(trackId: song.trackId)
        print("Playing: \(song.name)")
        print("trackId: \(song.trackId)")
    }
    
    /*
     //Add song to playback queue if user selects a cell
     func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
     let indexPath = tableView.indexPathForSelectedRow
     if let rowData: NSDictionary = self.tableData[indexPath!.row] as? NSDictionary, urlString = rowData["artworkUrl60"] as? String,
     imgURL = NSURL(string: urlString),
     imgData = NSData(contentsOfURL: imgURL) {
     queue.append(SongData(artWork: UIImage(data: imgData), trackName: rowData["trackName"] as? String, artistName: rowData["artistName"] as? String, trackId: String (rowData["trackId"]!)))
     //Show alert telling the user the song was added to the playback queue
     let addedTrackAlert = UIAlertController(title: nil, message: "Added track!", preferredStyle: .Alert)
     self.presentViewController(addedTrackAlert, animated: true, completion: nil)
     let delay = 0.5 * Double(NSEC_PER_SEC)
     let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
     dispatch_after(time, dispatch_get_main_queue(), {
     addedTrackAlert.dismissViewControllerAnimated(true, completion: nil)
     })
     tableView.deselectRowAtIndexPath(indexPath!, animated: true)
     }
     }
     */

}
