cmake_minimum_required(VERSION 3.16)

project(QML_1 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appQML_1
    main.cpp
)

qt_add_qml_module(appQML_1
    URI QML_1
    VERSION 1.0
    QML_FILES
        Main.qml
        LineEdit.qml
        InputField.qml
        Button.qml
        CheckBox.qml

    RESOURCES
            Images/ssyss.png
            Images/wp2757832.gif
            Images/Spider-Man-Becomes-Black-Spider-Man-Vemon.jpg
            Images/unlocked.png
            Images/clock.png
            Images/hour.png
            Images/min.png
            Images/rocket.png
            Images/checked.svg
            Images/unchecked.svg
            Images/button.png
            Images/image0.jpg
            Images/image1.jpg
            Images/image2.jpg
            Images/image3.jpg
            Images/image4.jpg
            Images/image5.jpg
            Images/image6.jpg
            Images/image7.jpg
            Images/image8.jpg
            Images/image9.jpg

            QML_FILES LineEdit.qml
            QML_FILES CheckBox.qml
            QML_FILES Button.qml
            QML_FILES InputField.qml
)


# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQML_1 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQML_1
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQML_1
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appQML_1
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
