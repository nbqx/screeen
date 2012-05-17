# Screeen (Only OSX)

use osx screencapture command interface in ruby script

## Usage

	require  'screeen'
	Screeen.capture do |f|
	  open("captured.jpg","w") do |p|
	    p.write File.open(f).read
	  end
	end

## TODO

- use screencapture command other options

