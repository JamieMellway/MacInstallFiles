MacInstallFiles
===============

I'm keeping track of the files I install on my Late 2013 Mac Pro so that I will have it handy when I set up Mac machines.

Settings
========
System Preferences -> Keyboard -> Keyboard -> Modifier Keys: No Action, Command, Control, Option

See http://www.vogons.org/viewtopic.php?t=28984 to setup DosBox, MIDI, and IAC Driver
/Applications/Utilities/Audio MIDI Setup -> Window -> Show MIDI Window: Double-click on IAC Driver and tick "Device is online"

Turn on time machine

Install
=======
Adobe Flash
Adobe Reader
AdBlock Plus for Safari
Audio Tools for XCode
DosBox (edit ~/Library/Preferences/DOSBox 0.74 Preferences so that mpu401=intelligent, mididevice=coremidi, and midiconfig=0)
Tattiebogle Xbox 360 controller driver
Audacity
Piano Marvel
Steam
Kontakt Komplete Ultimate
Xamarin
Firefox
AdBlock Plus for Firefox

Dock
====
Add two spaces to the Dock so that we have three section: System, Music Production, and Development
In Console type:
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
killall Dock

Pin (System): Finder, Safari, iTunes, LaunchPad, App Store, Activity Monitor, System Preference, Terminal, TextEdit, Steam
Pin (Music Production): GarageBand, Audio MIDI Setup, Kontakt, Logic Pro X, Piano Marvel, Audacity, DosBox
Pin (Development): Xamarin Studio, XCode
