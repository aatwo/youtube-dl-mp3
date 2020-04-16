About

This is a thin specialised powershell wrapper around youtube-dl for downloading mp3s from youtube videos.
	

Installation

youtube-dl must be callable from the command line. See the youtube-dl repo for linux instructions. For Windows simply add the folder containing youtube-dl.exe to your system PATH environment variable.
	

Windows specific installation

On Windows it assumes you have added the folder containing youtube-dl.exe to your PATH environment variable. The MP3 extraction also requires FFMPEG DLLs to be present either on the system path or in the same folder as youtube-dl.exe.
	
All of the required EXEs and DLLs can be found in this repository in the "windows-binaries" folder. Simply extract them somewhere on your PC and add that folder to your system PATH variable.
	
Alternatively youtube-dl can be downloaded from here (select "youtube-dl.exe" from the latest release):

https://github.com/ytdl-org/youtube-dl/releases
	
And the FFMPEG DLLs can be downloaded here:

https://ffmpeg.zeranoe.com/builds/

Make sure to set the "Linking" to "shared" before downloading and then extract the contents of the bin folder found in the downloaded archive to the same folder as your youtube-dl.exe.
	

Usage

To download the MP3 of a video you can call the download-mp3.ps1 script using the following:
./download-mp3.ps1 -url https://youtu.be/BXsWn9DhF5g
		
To download the MP3s for an entire playlist do the same as above, replacing the video URL with the playlist URL.
		
You can specify an output folder using the following (the folder will be automatically created):
./download-mp3.ps1 -url https://youtu.be/BXsWn9DhF5g -outputDir "C:\myMp3s"
		
If no output folder is specified "<repo_root>/output" is used.
	
To download multiple mp3s you can create a file containing line separated URLs and pass the file into the script:
	
./download-mp3.ps1 -urlFile "C:\myUrlsToDownload.txt"
	
Where myUrlsToDownload.txt contains URLs in the following format:

https://youtu.be/BXsWn9DhF5g
https://youtu.be/rLIOLGTfbjI
https://youtu.be/kIRBBekzlxk
			
To download multiple playlists do the same as above, replacing the video URLs with the playlist URLs (or any combination of the two).
	
For troubleshooting see the youtube-dl repo for more info:
https://github.com/ytdl-org/youtube-dl

