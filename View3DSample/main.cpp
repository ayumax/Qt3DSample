#include <Qt3DQuickExtras/qt3dquickwindow.h>
#include <QGuiApplication>

int main(int ac, char **av)
{
    QGuiApplication app(ac, av);
    Qt3DExtras::Quick::Qt3DQuickWindow view;

    view.setWidth(1280);
    view.setHeight(720);
    view.setSource(QUrl("qrc:/main.qml"));
    view.show();

    return app.exec();
}

