# tinybrowser

The project provides an example of using WebView.

The main purpose is to show minimal application with WebView.

The source code of the project is provided under [the license](LICENSE.BSD-3-CLAUSE.md),
that allows it to be used in third-party applications.

The [contributor agreement](CONTRIBUTING.md) documents the rights granted by contributors
to the Open Mobile Platform.

[Code of conduct](CODE_OF_CONDUCT.md) is a current set of rules of the Open Mobile
Platform which informs you how we expect the members of the community will interact
while contributing and communicating.

For information about contributors see [AUTHORS](AUTHORS.md).

## Project Structure

The project has a common structure of an application based on C++ and QML for Aurora OS.
All the C++ sources files are in [src](src) directory, QML sources are in [qml](qml) directory.

UI contains 2 pages:
- Information about the project and the license is displayed in [AboutPage.qml](qml/pages/AboutPage.qml) file.
- The [main page](qml/pages/MainPage.qml) is WebView presentation of open resource.
