<p align="center">
  <img src="http://i.cubeupload.com/OS74es.png" />
  <h3 align="center">ACC-SDK</h3>
  <p align="center">Unofficial Adobe CC SDK</p>
  <p align="center">
   <a href="https://github.com/KIDevs/ACC-SDK/"><img src="https://img.shields.io/badge/platform-macOS%20%7C%20Windows-lightgrey.svg" alt="Platforms"></a>
  </p>
<p align="center">
Unofficial simple SDK for creating HTML-based extensions for Adobe Creative Cloud applications with the extension build tool in zxp.
 
 
 *If you're looking for an easier way to build HTML extensions, check out the [Sublime Text plugin](https://github.com/davidderaedt/CC-Extension-Builder-for-Sublime-Text) or the [Brackets extension](https://github.com/KIDevs/ACC_Extensions_Builder), both built on top of this SDK.*
 </p>
 

## Toolkit of this SDK and their description
* The folder "csinterface" contains all available CEP versions. Feel free to take what you need and use it.

* The folder "sap" contains a utility for packing and capturing your extension in the zxp package. Instruction inside.

* The folder "templates" contains rsample templates for Adobe CC.



# How to use
- **newext**
- Creates an extension panel from a given template and deploys it.

Usage: 

* osx: `newext.sh <templatename> <extid>`
* win: `newext.bat <templatename> <extid>`

Parameters:

* `templatename` the name of the template folder you wish to use as a source
* `extid` a unique id for your extension

Returns: the path of the created extension folder.

Example: 

`newext.sh default com.example.ext`  

... will create the extension *com.example.ext* from the `default` template located in the `templates/default` folder. The extension panel should be ready to use from the corresponding Adobe application as long as you've enable debugging on the system (see the `debugmode` commands below).

You can of course add your own templates to the `templates` folder. Just make sure the extension ID used in the manifest is `com.example.ext`.

For additional extension samples, check out the [official samples repository](https://github.com/Adobe-CEP/Samples).



##deployext

Copies an existing extension folder to the appropriate location for it to be executed.

Usage:

* osx : `deployext.sh <extfolder> <extid>`
* win : `deployext.bat <extfolder> <extid>`

Parameters:

* `extfolder` the location of the extension folder you wish to deploy
* `extid` the extension unique id (ie `com.example.my_ext`)

Returns: the path of the created folder.


Example: To deploy an extension located at `~/my-awesome-ext/` with the ID `com.example.awesome-ext`, run:

`deployext.sh ~/my-awesome-ext/ com.example.awesome-ext`

For a sample extension to start with, check out the [official samples repository](https://github.com/Adobe-CEP/Samples).


##setdebugmode and disabledebugmode

For extensions to run, you should first run `debugmode.sh` (mac) or `debugmode.bat` (win) once to properly configure your system for extension development. Otherwise, extensions will refuse to launch.
`disabledebugmode.sh` reverts to the default behavior. Windows users should update the CEP registry key manually.


##execextendscript

This script executes an ExtendScript (jsx) file via command line in Photoshop, Illustrator, InDesign, or After Effects. Unfortunately, InDesign scripts are not supported on Windows for now.

* osx: `execextendscript.sh <appID> <filepath>`
* win: `execextendscript.bat <appID> <filepath>`

Parameters:

* `appID`: *ps* (Photoshop CC), *ai* (Illustrator CC), *id* (InDesign CC), or *ae* (After Effects CC)
* `filepath`: file path of the JSX file to be executed.

Example: to execute `test.jsx` in Photoshop from the command line on the mac, use:

`execextendscript.sh ps "~/Desktop/test.jsx"`


Created 2017 [[KIDev]](http://vk.com/kidev) [KICreativo.pro)](http://kicreativo.pro)

[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

# Credits #
Thanks to David Deraedt (for the base SDK https://github.com/davidderaedt/CC-EXT-SDK/)
