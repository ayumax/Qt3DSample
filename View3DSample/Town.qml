import QtQuick 2.11
import QtQuick 2.2 as QQ2
import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0

Entity {
    Entity {
        components: [
            SceneLoader {
                source : "/model3d/town2.obj"
            },
            Transform {
                translation: Qt.vector3d(40, 0, -20)
                scale3D: Qt.vector3d(10, 10, 10)
            }

        ]
    }

    Entity {
        components: [
            SceneLoader {
                source : "/model3d/town3.obj"
            },
            Transform {
                translation: Qt.vector3d(-5, 0, -10)
                scale3D: Qt.vector3d(10, 10, 10)
            }

        ]
    }
}
