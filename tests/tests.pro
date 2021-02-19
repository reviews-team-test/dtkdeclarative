TEMPLATE = app
QT += dtkcore dtkgui core quick quick-private

load(dtk_testcase)

INCLUDEPATH += $$PWD/../src
DEPENDPATH += $$PWD/../src
unix:QMAKE_RPATHDIR += $$OUT_PWD/../src
unix:LIBS += \
    -lgtest

# 指定moc文件生成目录和src一样
MOC_DIR=$$OUT_PWD/../src

include($$PWD/../src/src.pri)

HEADERS += \

SOURCES += \
    main.cpp \
    ut_dqmlglobalobject.cpp \
    ut_dplatformthemeproxy.cpp
