## Introduction
PyQt5 is a Python binding of the cross-platform GUI toolkit Qt, implemented as a Python plug-in.
The GUIs were created in [QT5](https://www.qt.io/) and then it was converted to python file.

## Installation
Follow [this](https://linuxways.net/ubuntu/how-to-install-qt-on-ubuntu-20-04/) tutorial to install QT on Ubuntu without selling your data to [QT5](https://www.qt.io/).

## Building a Python file from the designer layout (.ui)

```sh
pyuic5 -x <uiFilePath> -o <targetFilePath>
```

## Building runfile
Ok don't use [PyInstaller, pyqtdeploy, cx_Freeze etc](https://stackoverflow.com/a/56695405/14598633). Here are better ways to do this.

* Create your own installer using [QWizard](https://doc.qt.io/qtforpython-5/PySide2/QtWidgets/QWizard.html). This requires quite a lot of effort.
* Use [FBS installer](https://github.com/mherrmann/fbs). It is FOSS, so a win-win.

## Follow this playlist
https://www.youtube.com/playlist?list=PL3JVwFmb_BnRpvOeIh_To4YSiebiggyXS