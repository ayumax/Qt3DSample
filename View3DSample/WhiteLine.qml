import QtQuick 2.11
import QtQuick 2.2 as QQ2
import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0

Entity {
    property real locationY: 2
    components: [
        CuboidMesh {
            xExtent: 2000
            yExtent: 0.1
            zExtent: 0.2
        },
        PhongMaterial {
            ambient:"white"
        },
        Transform {
            translation: Qt.vector3d(0, 0, locationY)
        }
    ]
}
