
<h1 align="center"> ffmpeg batch scripts by Timbo Yuen</h1>
<hr/>

# License

- There is a provided M.I.T. license with each distribution

# Introduction

- This is my personal collection of ffmpeg helper batch scripts used in Windows

# Installation 

- Download ffmpeg executables (ffmpeg.exe, ffplay.exe, ffprobe.exe) from official windows build (https://ffmpeg.org/download.html#build-windows)  [Just get the full build]
- Add the path of the ffmpeg `/bin` folder to the environment variables

```command
setx /M path "%path%;C:\ffmpeg\bin"
```
In Windows, there is a system level PATH variable and a user level PATH variable, that gets concatenated into %PATH% or simply `path` in Command-Prompt.  Using setx /M flag will trigger to modify the user level PATH variable.  This is so you don't accidentally break your own system's PATH variable. 

# Usage

- Drag and drop the file of choice into the batch script.  That is all.


:star: Star this if it helped you (top right) or donate below — it helps!

# Donate

- If this greatly helped or entertained you, donate with the QR code or using this link-> https://www.paypal.com/donate/?hosted_button_id=64MB697PX3R2E

<p align="center">
	<img src="images/donate-qr.png" align="center" width="128" height="128"/>
</p>
<p align="center">
	<img src="images/coffee-pizza-meme.png" align="center" width="138" height="160"/>
</p>

#  Contact
If you have general questions, suggestions, or improvements about the scripts here, you can find my contacts on my website
www.timboyuen.com