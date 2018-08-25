import QtQuick 2.11
import QtQuick 2.2 as QQ2
import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0

Entity
{
    Entity {
        components: [
            CuboidMesh {
                xExtent: 2000
                yExtent: 0.1
                zExtent: 500
            },
            PhongMaterial {
                ambient:"dimgray"
            },
            Transform {
                translation: Qt.vector3d(0, -0.01, 0)
            }
        ]
    }

    Entity {
        components: [
            CuboidMesh {
                xExtent: 2000
                yExtent: 0.1
                zExtent: 3.5
            },
            PhongMaterial {
            }
        ]
    }

    WhiteLine
    {
        locationY: -1.8
    }

    WhiteLine
    {
        locationY: 1.8
    }

}


