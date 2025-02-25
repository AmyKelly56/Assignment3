# Swift Music Player


The project is an application based in Swift for iOS devices (iPad, iPod, iPhone). There is two main parts to the application. There is a total of 7 classes. Imported use of libaries UIKit, Foundation, AVFounddation. Multiple contraints added such as Auto Layout which allows the user interface to adapt immediatlet to any size. Making it compatiable with all devices and screen sizes weather this be an iPhone 4, 5, 6, 7, plus models of these devices and all iPad Models. There is multiple screens in all sections of the app.  

On the main storyboard which you are presented with on opening of the application presents two options of "Album Info" and "Music Player". The transtion to either of these sections is performed through a modally segue. The "Album Info" section contains album inforamtion such as the album artwork, a brief background about the album and the songs that are on the album. This information is all stored in a library using a struct template to hold the information. The images are then populated through an array. The remainder of the information is updated throught the updateUI() function when an album has been selected. The transition from the album image to the information is also preformed through a segue. If the information for a specific album does not fit entirely on the screen then a scroll option will automatically be presented. The Album Class passes the information required by the Album View Controller to load all content. 

The "Music Player" section of the application is also presented with a seque. It opens the page view containing a list of songs. The audios and the cover images are files I/O which are stored into groups. The main class for this section is the Player View Controller which is an UI View Controller. IBOutlets are connected from the storyboard design to the code to load the cover images, progress view, song title, artist label and the shuffle function. Upon selection of a specific song it will begin to play. You are presented with the options of pause, play, stop, fast forward, rewind, skip to next, skip back to the previous and a shuffle option which can be toggled on and off. With the stopAction the current file playing will be reset to 0 when restarted. The pauseAction will pause the file at the current point and will resume from this point whne unpaused. The updateProgessView will update along with the file as is play through. The next and previous actions will progress through the songs as long as the trackId is under the specified number. This IF statement also takes into account if the shifftle feature is on, to selected a track at random from the library. The information for this display is stored in a strcut "MusicLibrary".

I attempted to add the Spotify SDK however I deviced against this as with the current BETA version it only fucntions with Spotify premium accounts. Also research the possibity SDK however upon attempt I was unsuccessful of implimentation. An example of inheritance can be seen:
        
        # let albumName = "\((album?.coverImageName)!)"

Where is inherites from the Album class. An example of polymorphism can be seen where the tableView function is first called and is then overrided by its subclass.

        # func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { 
            return library.count
            }

            override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell 

# YouTube Link

https://www.youtube.com/embed/q8HhrZUq85w
    


# Screenshots

<img width="371" alt="screen shot 2017-04-19 at 11 09 53" src="https://cloud.githubusercontent.com/assets/20759350/25174899/c33b5f12-24f0-11e7-8d9d-b5a248ca1745.png">


<img width="372" alt="screen shot 2017-04-19 at 11 10 42" src="https://cloud.githubusercontent.com/assets/20759350/25174961/e11d191c-24f0-11e7-9b96-9267a5e33dee.png">


<img width="374" alt="screen shot 2017-04-19 at 11 11 17" src="https://cloud.githubusercontent.com/assets/20759350/25174982/f0bab8f2-24f0-11e7-9737-7dbb94e245e8.png">


<img width="375" alt="screen shot 2017-04-19 at 11 12 42" src="https://cloud.githubusercontent.com/assets/20759350/25175036/25deed28-24f1-11e7-8963-6d5c628d4738.png">


<img width="380" alt="screen shot 2017-04-19 at 11 16 36" src="https://cloud.githubusercontent.com/assets/20759350/25175166/b28141ea-24f1-11e7-854b-ba0b0e5dc216.png">


<img width="374" alt="screen shot 2017-04-19 at 11 17 52" src="https://cloud.githubusercontent.com/assets/20759350/25175216/dcf9e2a6-24f1-11e7-9ae8-3ef74323a5b4.png">





