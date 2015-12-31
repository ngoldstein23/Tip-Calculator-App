# Tip-Calculator-App
# TipCalculator
# Pre-work - Tip Calculator

Tip Calculator is a tip calculator application for iOS.

Submitted by: Natalie Goldstein

Time spent: 7 hours spent in total

## User Stories

The following **required** functionality is complete:
* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [ ] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] The app can display the total per person if you are splitting the tip between up to seven people. 


## Video Walkthrough 

Here's a walkthrough of implemented user stories:
<a href="http://imgur.com/eHw8YcZ"><img src="http://i.imgur.com/eHw8YcZ.gif" title="source: imgur.com" /></a>
GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

I initially tried to put the picker wheel in the settings page but I had trouble finding a way to use the picker wheel value in my ViewController class. I tried to make the picker wheel value global and then tried using the segue functions. I got close using segue but there was some issues transferring the picker wheel value as a string versus an int. I then just decided to put the picker wheel on the main screen so I could at least get it working there. There is still a problem with the picker wheel in that when you switch the values they do not automatically update. However, if you change the picker value and then change the percent value both will update. 


## License

    Copyright [2015] [Natalie Goldstein]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
