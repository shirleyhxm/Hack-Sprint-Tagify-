/*
 * Copyright (c) 2015 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation

class TagifyUser {
  let uid: String
  let email: String
  var username: String
  var iconImage = UIImage()
  
  var following = Set<String>()
  var followedBy = Set<String>()
  var songs = Set<Song>()
  
  let userProfilesRef = Database.database().reference(withPath: "userProfiles")
  let userSongsRef = Database.database().reference(withPath: "userSongs")
  let storageRef: StorageReference! = Storage.storage().reference()
  
  init(authData: User) {
    uid = authData.uid
    email = authData.email!
    self.username = self.email
    self.updateAll()
  }
  init(uid: String) {
    self.email = ""
    self.username = ""
    self.uid = uid
    //self.updateAll()
  }
  func fillUserEmail() {
    userProfilesRef.child("\(self.uid)/email").setValue(self.email)
    userSongsRef.child("\(self.uid)/email").setValue(self.email)
    
  }
  func updateUsername(usernameSnapshot: DataSnapshot) {
    guard self.uid != "" else { return }
    if usernameSnapshot.exists() {
      self.username = usernameSnapshot.value as! String
    } else {
      self.username = self.email
      userProfilesRef.child("\(self.uid)/username").setValue(self.email)
    }
  }
  func updateIcon(data: Data?, error: Error?) {
    if let error = error {
      print("error getting user icon: \(error.localizedDescription)")
      iconImage = UIImage(named: "music.jpg")!
    } else {
      print("got icon for user \(uid)")
      iconImage = UIImage(data: data!)!
    }
  }
  func updateFollowing(followingSnapshot: DataSnapshot) {
    guard self.uid != "" else { return }
    self.following = Set<String>()
    if followingSnapshot.exists() {
      for uid in followingSnapshot.value as! [String: Bool] {
        print("following : \(uid.key)")
        self.following.insert(uid.key)
      }
    }
  }
  func updateFollowers(followerSnapshot: DataSnapshot) {
    guard self.uid != "" else { return }
    self.followedBy = Set<String>()
    if followerSnapshot.exists() {
      for uid in followerSnapshot.value as! [String: Bool] {
        print("followed by : \(uid.key)")
        self.followedBy.insert(uid.key)
      }
    }
  }
  func updateSongs(songsSnapshot: DataSnapshot) {
    guard self.uid != "" else {return}
    self.songs = Set<Song>()
    if songsSnapshot.exists() {
      for songSnap in songsSnapshot.children.allObjects {
        let songSnap = songSnap as! DataSnapshot
        let song = Song(snapshot: songSnap)
        self.songs.insert(song)
      }
    }
  }
  func updateAll() {
    self.fillUserEmail()
    let ref = userProfilesRef.child(self.uid)
    let usernameRef = ref.child("username")
    usernameRef.observeSingleEvent(of: .value, with: { snapshot in
      self.updateUsername(usernameSnapshot: snapshot)
    })
    let userIconPath = "\(self.uid)/userIcon.jpg"
    let reference = storageRef.child(userIconPath)
    reference.getData(maxSize: 1 * 1024 * 1024) { data, error in
      self.updateIcon(data: data, error: error)
    }
    let followingRef = ref.child("following")
    followingRef.observeSingleEvent(of: .value, with: { snapshot in
      self.updateFollowing(followingSnapshot: snapshot)
    })
    let followersRef = ref.child("followedBy")
    followersRef.observeSingleEvent(of: .value, with: { snapshot in
      self.updateFollowers(followerSnapshot: snapshot)
    })
  }
  func setUsername(username: String) {
    self.username = username
    print("going to update username to \(username)")
    userProfilesRef.child("\(self.uid)/username").setValue(username)
  }
}

extension TagifyUser { // related to following and unfollowing
  func follow(uid: String) {
    self.following.insert(uid)
    print("going to follow: \(uid)")
    userProfilesRef.child("\(self.uid)/following/\(uid)").setValue(true)
  }
  func unfollow(uid: String) {
    self.following.remove(uid)
    print("going to unfollow: \(uid)")
    userProfilesRef.child("\(self.uid)/following/\(uid)").setValue(NSNull())
  }
  func followedBy(uid: String) {
    self.followedBy.insert(uid)
    print("going to be followed by: \(uid)")
    userProfilesRef.child("\(self.uid)/followedBy/\(uid)").setValue(true)
  }
  func unfollowedBy(uid: String) {
    self.followedBy.remove(uid)
    print("going to be unfollowed by: \(uid)")
    userProfilesRef.child("\(self.uid)/followedBy/\(uid)").setValue(NSNull())
  }
}

extension TagifyUser { // related to adding and removing tags
  func add(tag: String, forSong song: Song) {
    //Database.database().reference(withPath: "userTags").child("\(self.uid)/\(tag)/\(song.trackId)").setValue(song.name)
    guard let index = self.songs.index(of: song) else {
      print("cannot find song")
      return
    }
    var updatedSong = self.songs[index]
    updatedSong.tags.insert(tag)
    self.songs.update(with: updatedSong)
    userSongsRef.child("\(self.uid)/songs/\(song.trackId)/tags/\(tag)").setValue(true)
  }
  func remove(tag: String, forSong song: Song) {
    //Database.database().reference(withPath: "userTags").child("\(self.uid)/\(tag)/\(song.trackId)").setValue(NSNull())
    guard let index = self.songs.index(of: song) else {
      print("cannot find song")
      return
    }
    var updatedSong = self.songs[index]
    updatedSong.tags.remove(tag)
    self.songs.update(with: updatedSong)
    print("removing tag \(tag) for song \(updatedSong.name)")
    userSongsRef.child("\(self.uid)/songs/\(song.trackId)/tags/\(tag)").setValue(NSNull())
  }
}

extension TagifyUser: Hashable {
  var hashValue: Int {
    return uid.hashValue
  }
  static func == (lhs: TagifyUser, rhs: TagifyUser) -> Bool {
    return lhs.uid == rhs.uid
  }
}
