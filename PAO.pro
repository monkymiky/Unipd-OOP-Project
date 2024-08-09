QT += core widgets gui charts
TARGET = PAO

CONFIG += c++17 cmdline

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS += sensor/AbstractSensor.h \
           sensor/Dust25S.h \
           sensor/HumidityS.h \
           sensor/ObserverInterface.h \
           sensor/SensorManager.h \
           sensor/TemperatureS.h \
           sensor/VisitorInterface.h \
           view/Aside.h \
           view/MainSensorView.h \
           view/MainWindow.h \
           view/SensorDialog.h \
           view/SensorSmallView.h \
           view/TableButtonItem.h \
           view/ModifySensorVisitor.h \
           sensor/JsonPharser.h \
           sensor/JsonVisitor.h
SOURCES += main.cpp \
           sensor/AbstractSensor.cpp \
           sensor/Dust25S.cpp \
           sensor/HumidityS.cpp \
           sensor/SensorManager.cpp \
           sensor/TemperatureS.cpp \
           view/Aside.cpp \
           view/MainSensorView.cpp \
           view/MainWindow.cpp \
           view/SensorDialog.cpp \
           view/SensorSmallView.cpp \
           view/ModifySensorVisitor.cpp \
           sensor/JsonVisitor.cpp \
           sensor/JsonPharser.cpp

RESOURCES += \
            assets/icons/lens.svg \
            assets/icons/lens.png

INCLUDEPATH += "C:/Program Files (x86)/Visual Leak Detector/include/" LIBS      += -L"C:/Program Files (x86)/Visual Leak Detector/lib/Win64"


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
