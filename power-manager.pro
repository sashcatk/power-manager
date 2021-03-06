TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle

QT += core dbus

TARGET = power-manager
TEMPLATE = app


target.path += /usr/sbin

targetPerm.files = power-manager.conf
targetPerm.path += /etc/dbus-1/system.d

INSTALLS += target targetPerm

SOURCES += \
    bsp.cpp \
    main.cpp \
    powercontrol.cpp \
    pminterfaceadaptor.cpp

HEADERS += \
    bsp.h \
    powercontrol.h \
    pminterfaceadaptor.h
