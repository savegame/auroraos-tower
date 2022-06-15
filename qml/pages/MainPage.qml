/****************************************************************************
**
** Copyright (C) 2021-2022 Open Mobile Platform LLC.
** Contact: https://community.omprussia.ru/open-source
**
** This file is part of the Tiny Browser project.
**
** $QT_BEGIN_LICENSE:BSD$
**
** Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of copyright holder nor the names of its contributors
**     may be used to endorse or promote products derived from this software
**     without specific prior written permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
** TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
** PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
** CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
** EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
** PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
** PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
** LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
** NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
** SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.6
import Sailfish.Silica 1.0
import Sailfish.WebView 1.0
import Sailfish.WebEngine 1.0

Page {
    objectName: "mainPage"

    WebView {
        id: webView

        property string _initUrl: "http://www.youtube.com"

        objectName: "webView"
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
            bottom: pageFooter.top
        }
        url: _initUrl

        Component.onCompleted: {
            PermissionManager.instance();
        }
    }

    Item {
        id: pageFooter

        objectName: "pageFooter"
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        height: Math.max(aboutButton.height, urlField.height) + Theme.paddingMedium * 2

        IconButton {
            id: aboutButton

            objectName: "aboutButton"
            anchors {
                left: parent.left
                leftMargin: Theme.paddingMedium
                verticalCenter: parent.verticalCenter
            }
            icon {
                source: "image://theme/icon-m-about"
                sourceSize {
                    width: Theme.iconSizeMedium
                    height: Theme.iconSizeMedium
                }
            }

            onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
        }

        TextField {
            id: urlField

            objectName: "urlField"
            anchors {
                left: aboutButton.right
                right: parent.right
                verticalCenter: parent.verticalCenter
            }
            inputMethodHints: Qt.ImhNoPredictiveText | Qt.ImhUrlCharactersOnly
            focusOutBehavior: FocusBehavior.ClearPageFocus
            labelVisible: false
            placeholderText: qsTr("URL")
            textLeftPadding: 0
            textLeftMargin: Theme.paddingMedium
            font {
                pixelSize: Theme.fontSizeLarge
                family: Theme.fontFamilyHeading
            }
            EnterKey.iconSource: "image://theme/icon-m-search"

            EnterKey.onClicked: {
                webView.url = text;
                webView.focus = true;
            }
            Component.onCompleted: urlField.text = webView._initUrl
        }
    }
}
