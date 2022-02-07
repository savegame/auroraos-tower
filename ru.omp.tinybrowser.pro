#############################################################################
##
## Copyright (C) 2022 Open Mobile Platform LLC.
## Contact: https://community.omprussia.ru/open-source
##
## This file is part of the tinybrowser project.
##
## Redistribution and use in source and binary forms, with or without
## modification, are permitted provided that the following conditions are
## met:
##   * Redistributions of source code must retain the above copyright
##     notice, this list of conditions and the following disclaimer.
##   * Redistributions in binary form must reproduce the above copyright
##     notice, this list of conditions and the following disclaimer in
##     the documentation and/or other materials provided with the
##     distribution.
##   * Neither the name of copyright holder nor the names of its contributors
##     may be used to endorse or promote products derived from this software
##     without specific prior written permission.
##
## THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
## "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
## TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
## PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
## CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
## EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
## PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
## PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
## LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
## NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
## SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
##
#############################################################################

TARGET = ru.omp.tinybrowser

CONFIG += link_pkgconfig
CONFIG += sailfishapp

SOURCES += \
    src/main.cpp

DISTFILES += \
    qml/cover/DefaultCoverPage.qml \
    qml/images/tinybrowser.svg \
    qml/pages/MainPage.qml \
    qml/pages/UrlPage.qml \
    qml/ru.omp.tinybrowser.qml \
    rpm/ru.omp.tinybrowser.spec \
    rpm/ru.omp.tinybrowser.yaml \
    translations/*.ts \
    ru.omp.tinybrowser.desktop \
    LICENSE.BSD-3-Clause.md \
    README.md

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += sailfishapp_i18n

TRANSLATIONS += \
    translations/ru.omp.tinybrowser.ts \
    translations/ru.omp.tinybrowser-ru.ts
