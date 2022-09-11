# pLarm

![screen-from-sportTimer](http://mewware.com/mewware/p-screenshots/v0.6.7/Screenshot%20from%202022-08-15%2003-28-39.png)
![screen-from-sportTimer](http://mewware.com/mewware/p-screenshots/v0.6.7/Screenshot%20from%202022-08-15%2003-26-39.png)

## Features Log since July 20, 2022.
 - 0.1.0 -> StopWatch
 - 0.2.0 -> Dark/Light Mode
 - 0.3.0 -> Alarm View + SetPage 
 - 0.4.0 -> Calender View + One-DayPick + Multi-DayPick + WeekPick
 - 0.5.0 -> Single Timer + SetPage + DismissPage
 - 0.6.0 -> Sport Timer (Tabata) + SetPage(half) + SoundEffect + SoundSpeech(so,so) 
 - 0.6.1 -> test in android enviroment (AlarmSetPage fixed)
 - 0.6.2 -> test in android enviroment (SwipeView Timers fixed but indeicator isnt show whereis thepage)
 - 0.6.3 -> test in android enviroment (Single timer fixed but dismissPage button dont swipe to cancel/stop, just on button clicked work)
 - 0.6.4 -> test in android enviroment (sport timer)
 - 0.6.5 -> sportTimer soundEffects & soundSpeech Mute/Unmute
 - 0.6.6 -> Style sportTimer SetPage (Count Down Before Round Starts & Turn off/on SoundEffects & Turn off/on SoundSpeech) 
 - 0.6.7 -> Sound Effect/Speech pause & resume
 - 0.6.8 -> Dark/Light mode save on database.
 - 0.6.9 -> setup Database System + connect Alarm and Alarm-set-page with database + modify dark/light mode save on D.B (move into db system)
 - 0.7.0 -> Background application (just for now its ok it keep running whole application on background, not a service so it's not optimized maybe android close this in some situations) + (i figuraout how to temperory fix this problem: on android settings select app -> battary usage -> optimize -> disable, and turn on allow-background-activities in same app settings page this works forever untill phone battary dies or less than ~~~ 10-5% the app will kill by O.S)
 
 - 0.8.0 -> Logs (create new log , add message to log, view messages , view logs)
 - 0.8.1 -> logs & alarm setPage for android fixed autopopup keyboard.
 - 0.8.2 -> Logs (logSetPage style fixed)
 - 0.8.3 -> logs (database logMessage & logs fixed on delete Cascade)
 - 0.9.0 -> eventGroups added.
 - 0.9.1 -> test on android.
____________________________________

 ## up comming  
  - 0.9.1 -> working on event
 -  settings page
 -  multi timer
 -  onWay Timer
 -  Calender PickDay (multi month day picks)
 -  Calender (Shadow DayCircle) 
 -  routine and tasks... 
 
 ##problems i've seen
 - Alarm set page : Text alarm name when button save clicked disable/.. to avoid leave pointer text on all app.
- sportTime : SPEECH FIX say (READ, GO).
- SportTimer : SounEffects selectable to pick SoundPack, SoundSpeech selectable to pick SpeechPack.
- sportTimer : report with speeech remaining/left .
- alarm: input name isnt valid check, must remove qouts ' or " or replace something with those.
- alarm: if alarm name is empty button save clicked show message must enter name for alarm.
- MySwitch component: when theme switched between dark/light switch isnt change color correctly sometimes has bad color.
- MySwitch component: when init switch turned on the button and backcolor isnt look good.
- dismissPage: some erros show up + swipe somewhere in adnroid isnt work
- LogsPage,Alarm,LogMessages.qml : optimize and avoid to twice fetch from database + change name .js as SaveLoad into just load...

___________________________________

![calendar](http://mewware.com/mewware/p-screenshots/0.6.3/photo_6035338519251107865_y.jpeg)
![alarmlist](http://mewware.com/mewware/p-screenshots/0.6.3/photo_6035338519251107863_y.jpeg)

![stopWatch](http://mewware.com/mewware/p-screenshots/0.6.3/photo_6035338519251107861_y.jpeg)![alarmSetPage](http://mewware.com/mewware/p-screenshots/0.6.3/photo_6035338519251107864_y.jpeg)
![singleTimer](http://mewware.com/mewware/p-screenshots/0.6.3/photo_6035338519251107859_y.jpeg)



____________________________________
## Thanks to :<br/>
    qt.io
    icons8.com for icons.
    ttsmp3.com for Text To Speech Voices.
    mixkit.co for Sound Effect.
    https://dribbble.com/shots/10918806-Smart-Alarm-app  for Design alarm style + set alarm.
    https://dribbble.com/shots/9709600-Daily-UI-Events-Dark-Version for Calender base.
    https://github.com/FONQRI/AndroidAlarm for how to draw canvas + theme Material Controls.
    https://ideone.com/aDwLCM for how to find calender Date to DayOfWeek formual.
    https://aparat.com/v/7LUOt?playlist=66791 for Qml Tutorial.
    https://gist.github.com/joseluisq/dc205abcc9733630639eaf43e267d63f for how to add two date together.
    https://fecub.wordpress.com/2016/01/08/save-your-qt-quick-app-settings-easily-with-localstorage/ for how to save localdata
    
