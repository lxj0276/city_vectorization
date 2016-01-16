QT += core
QT -= gui

TARGET = cityplan_vectorization
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += \
    src/areafilter.cpp \
    src/auxiliary.cpp \
    src/collineargrouping.cpp \
    src/colorconversions.cpp \
    src/connectedcomponent.cpp \
    src/customhoughtransform.cpp \
    src/main.cpp \
    src/unionfind.cpp \
    src/unionfindcomponents.cpp \
    src/zhangsuen.cpp \
    src/stringheuristics.cpp

HEADERS += \
    include/areafilter.hpp \
    include/auxiliary.hpp \
    include/collineargrouping.hpp \
    include/colorconversions.hpp \
    include/connectedcomponent.hpp \
    include/customhoughtransform.hpp \
    include/opencvincludes.hpp \
    include/unionfind.hpp \
    include/unionfindcomponents.hpp \
    include/zhangsuen.hpp \
    include/stringheuristics.hpp \
    include/vec2icompare.hpp

INCLUDEPATH += "C:/opencv/build/include"

LIBS += -LC:/opencv/build/x86/mingw/bin \
            -lopencv_highgui300 \
            -lopencv_imgproc300 \
            -lopencv_core300 \
            -lopencv_imgcodecs300 \

CONFIG += c++11
