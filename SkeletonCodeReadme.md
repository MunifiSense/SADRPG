Skeleton Code Info
==================

Dependencies
============

* Microsoft Windows (sorry - RPG Maker is windows only; if you want to run Game.exe or RPG Maker, you need Windows.)
* gnu make (http://gnuwin32.sourceforge.net/downlinks/make.php .. or use what's in mingw/cygwin)
* ruby 32-bit ( http://www.ruby-lang.org - pik works well for windows)
* rvpacker (https://rubygems.org/gems/rvpacker - gem install rvpacker, if it doesnt work nicely try downloading the source and doing 'bundle install')
* RPG Maker VX Ace (http://www.rpgmakerweb.com/products/programs/rpg-maker-vx-ace)

License
=======

All of the files in "LICENSE/Enterbrain_files.txt" were ripped from RPG Maker VX Ace, (C) Enterbrain. The Enterbrain RPG Maker VX Ace license is in this repository as LICENSE/VXACE_EULA.rtf. It is assumed that your team will have at least as many licenses of VX Ace as you have people working on the project.

Everything in th the skeleton code used for this project not created by Enterbrain is covered by the MIT License, see LICENSE/MIT.txt.

For non-programmers
===================

For any project built off this skeleton, collaborating is easy:

* Download and install the version control client that your developer tells you to
* Check out the project from the URL they give you
* Repack the project by running 'pack.rb' (doubleclick it in Explorer)
* Open the game project in RPG Maker and make whatever changes you want
* Unpack the project by running 'unpack.rb' (doubleclick it in Explorer)
* Commit the project into version control

Now your programmers and project managers will thank you.

For programmers and others who care about diff/merge
====================================================

* Clone the project
* Do whatever work you're going to do
 * edit yaml files in YAML/; these are all the game database files converted to plaintext YAML
 * edit scripts under ./Scripts - these are all the game scripts, ready for your IDE/editor of choice
 * Whatever else
* Test your work in the game (or open it up in the editor)
 * make pack
 * do your testing
 * make unpack (convert it all back to text)
* Commit your work

The game skeleton has had all of the default ruby scripts yanked out. The scripts (100% stock) now live in ./Scripts/RPG/*rb. There is only one script loaded by the project proper (and which gets packed back into Data/), ./Scripts/entrypoint.rb. It doesn't do anything more than setup some load paths ( so 'require' works how we expect ), import the RPG module, and then call the main loop.

If you want to modify entrypoint.rb, do it before the game loop starts. However I recommend that you make a new module under Scripts/ and have the RPG module require it, or just add it to the RPG module itself.

For project managers
====================

You might want to add a .gitignore to exclude Data/* to enforce that only the unpacked files get committed, and a pre-commit hook to reject any commits that don't keep YAML/ up to date with Data/, and Scripts/ up to date with YAML/Scripts.yaml