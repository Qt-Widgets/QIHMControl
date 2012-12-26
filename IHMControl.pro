#-------------------------------------------------
#
# Project created by QtCreator 2012-12-22T21:18:05
#
#-------------------------------------------------

QT       += core gui \
            webkit

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = IHMControl
TEMPLATE = app

CONFIG += qt3d

include(libs/3rdparty/qextserialport/src/qextserialport.pri)

INCLUDEPATH += src \
    src/ui \
    src/protocol \
    src/protocol/message

SOURCES += src/main.cpp\
    src/IHMCore.cpp \
    src/ui/JoyStickStatus.cpp \
    src/ui/SystemStatus.cpp \
    src/ui/IHMControl.cpp \
    src/ui/MotorStatus.cpp \
    src/ui/PIDBox.cpp \
    src/ui/GaugesView.cpp \
    src/UAV.cpp \
    src/protocol/Protocol.cpp \
    src/protocol/message/MessageInterface.cpp \
    src/ui/SerialConfiguration.cpp \
    src/ui/Led.cpp \
    src/ui/Cube3D.cpp \
    src/ui/UAVView.cpp

HEADERS  += \
    src/IHMCore.h \
    src/ui/JoyStickStatus.h \
    src/ui/SystemStatus.h \
    src/ui/IHMControl.h \
    src/ui/MotorStatus.h \
    src/ui/PIDBox.h \
    src/ui/GaugesView.h \
    src/UAV.h \
    src/protocol/Protocol.h \
    src/protocol/message/MessageInterface.h \
    src/ui/SerialConfiguration.h \
    src/ui/Led.h \
    src/ui/Cube3D.h \
    src/ui/UAVView.h

FORMS    += \
    src/ui/JoyStickStatus.ui \
    src/ui/SystemStatus.ui \
    src/ui/IHMControl.ui \
    src/ui/MotorStatus.ui \
    src/ui/PIDBox.ui \
    src/ui/SerialConfiguration.ui

RESOURCES += \
    files.qrc
