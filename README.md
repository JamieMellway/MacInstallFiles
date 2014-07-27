MacInstallFiles
===============

I'm keeping track of the files I install on my Late 2013 Mac Pro so that I will have it handy when I set up other Mac machines.  Hopefully it will be useful for other people as well.

Settings
========
System Preferences -> Keyboard -> Keyboard -> Modifier Keys: No Action, Command, Control, Option

Turn on time machine

In console: defaults write com.apple.finder AppleShowAllFiles YES

Copy .inputrc to ~/  
In console: chmod 644 ~/.inputrc  
Open Terminal window, go to Preferences -> Settings -> Keyboard.  Find the symbol that is an up arrow with two horizontal lines through it, go to Edit and change the value from 'Scroll Page Up' to '\033[5~'.  Now change the down arrow with two lines from 'Scroll Page Down' to '\033[6~'.  

Setting Up Audio
================
It took a while to get the audio set up correctly.  

Kontakt does not recognize the Line-Out, so would only use the internal speakers.  Installing SoundFlower and setting it to output to Line-Out and then changing Kontakt’s output to SoundFlower (2ch) 48000 fixed that.  Drag SoundFlower app to Dock and set to Open at Login.  Make sure everything is at the same sample rate or else it will not work. 

Setup the MIDI in Kontakt so that the inputs and outputs are assigned ports.  

Getting Voyetra SP Pro to work via DosBox to work with MIDI devices took a few steps.  
1. Install SP Pro with FM Synth and the Roland MPU.  
2. Edit “~/Library/Preferences/DOSBox 0.74 Preferences” so that mpu401=intelligent, mididevice=coremidi, and midiconfig=0.  Add c:/VOYETRA/seq.bat to the autoexec.bat portion of the file.  
3. /Applications/Utilities/Audio MIDI Setup -> Window -> Show MIDI Window: Double-click on IAC Driver and tick "Device is online"  
4. Install MIDIPatchBay and change the patch to go from IAC Driver Bus 1 to FastTrack Pro.    New Add a patch to go in the opposite direction.  Allow all notes.  

See http://www.vogons.org/viewtopic.php?t=28984 to setup DosBox, MIDI, and IAC Driver.  

General Installs
================
Adobe Flash  
Adobe Reader  
AdBlock Plus for Safari  
Firefox  
AdBlock Plus for Firefox  
Steam  
Tattiebogle Xbox 360 controller driver  
winamp - https://www.macupdate.com/app/mac/40721/winamp  

Music Prodution Installs
========================
Kontakt Komplete Ultimate (Harddrive install)  
Audio Tools for XCode  
DosBox (edit “~/Library/Preferences/DOSBox 0.74 Preferences” so that mpu401=intelligent, mididevice=coremidi, and midiconfig=0)  
Voyetra SP Pro in dosbox (pick no FM Synth and the Roland MPU)  
SoundFlower  
Audacity  
Piano Marvel  
MIDI Patchbay http://notahat.com/midi_patchbay/  

Development Installs
====================
Xamarin  
Open multiple Xamarin Studios - http://stackoverflow.com/a/15164307  
github  

Dock
====
Add two spaces to the Dock so that we have three section: System, Music Production, and Development  
In Console type:  
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'  
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'  
killall Dock  

Pin (System): Finder, Safari, iTunes, LaunchPad, App Store, Activity Monitor, System Preference, Terminal, TextEdit, Steam  
Pin (Music Production): GarageBand, Audio MIDI Setup, MIDI PatchBay, Kontakt, Logic Pro X, Piano Marvel, Audacity, DosBox, SoundFlower  
Pin (Development): Xamarin Studio, XCode, github  
