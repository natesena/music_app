### Welcome to the Freely ReadMe!

Freely was designed to be a Soundcloud replica using Ruby on Rails and WaveSurfer.js.

[https://wavesurfer-js.org/docs/]: 	&quot;WaveSurfer.js&quot;

is a Javascript library built for working with audio files, specializing in giving the waveform look synonymous with Soundcloud's UI.

#### Getting Started

Make sure you have Ruby on Rails and then clone the repository down. 

`bundle install`

`rake db:create`

`rake db:migrate`	

`rails s`

Ideally, you should have a database system like PostgreSQL as well.

#### Overview

The app features  three separate models: users, songs and comments.  Users can have many songs, and each song can have many comments.

#### Logging In

Users must create an account to post music or leave comments. Accounts require emails and passwords. Passwords are encrypted with B-Crypt!

If you have an account, you likely have a cookie and should be taken directly to the songs index page.

#### Posting A Song

Users can post a song by clicking "Upload". They will be asked to include a title, genre, image file, and of course, audio file.


#### Creating/Editing Your Profile

Users can edit their username, profile pics, cover photos, Monero Addresses, Hometowns, Website Address, Facebook Page, Twitter Page, Instagram, and Spotify links. Users may also delete their account.

#### Adding a Comment

If signed in, users can comment on any song, and even comment on each other's comments in cascading style.

#### Technologies Used

- paperclip (audio and image uploading)
- javascript
- bcrypt
- bootstrap

#### Acknowledgements

- special thanks to https://github.com/philuchansky foo teaching me about data-id's





