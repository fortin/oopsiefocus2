(* 
OopsieFocus 2

A script to launch OmniFocus and activate the Quick Entry Panel (inspired by Shawn Blanc's version, which no longer works.)*

=====
Copyright (C) 2015 Antonio Fortin

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

=====

*This documentation is copied from Shawn's original, available here: http://shawnblanc.net/2011/06/oopsiefocus/ , with slight changes.

Works great with Alfred, FastScripts or Keyboard Maestro:
	https://www.alfredapp.com/
	http://www.red-sweater.com/fastscripts/
	http://www.keyboardmaestro.com/main/
	
How it works:
	Set this script to run using the same keyboard shortut that you use to launch the Quick 
	Entry Panel in OmniFocus. If you ever try to activate the Quick Entry Panel but 
	OmniFocus happens to not be running, then this script will launch OmniFocus and bring 
	up the Quick Entry Panel for you.
*)

tell application "System Events"
	if not (exists process "Macintosh HD:Applications:OmniFocus.app") then
		tell application "Macintosh HD:Applications:OmniFocus.app"
			activate
			tell quick entry
				open
				activate
			end tell
		end tell
	else
		null
	end if
end tell