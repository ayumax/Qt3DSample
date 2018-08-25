import QtQuick 2.11
import QtQuick 2.2 as QQ2
import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0

Entity {
    function notifyClick()
    {
        jumpAnimation.start()
    }

    Entity {
        components: [
            SceneLoader {
                source : "/model3d/track.obj"
            },
            Transform {
                id: myCarTransform
                property real locationX: 0.0
                property real locationY: 0.0
                rotation: fromAxisAndAngle(Qt.vector3d(0, 1, 0), 90)
                translation : Qt.vector3d(locationX, locationY, 0)
            }

        ]
    }

    QQ2.NumberAnimation {
        id:moveAnimation
        target: myCarTransform
        property: "locationX"
        duration: 30000
        from: -20
        to: 1000

        loops: QQ2.Animation.Infinite
        running: true
    }

    QQ2.SequentialAnimation {
        id:jumpAnimation
        QQ2.NumberAnimation {
            target: myCarTransform
            property: "locationY"
            duration: 500
            from: 0
            to: 3
            easing.type: Easing.InSine
        }

        QQ2.NumberAnimation {
            target: myCarTransform
            property: "locationY"
            duration: 500
            from: 3
            to: 0
            easing.type: Easing.OutSine
            onStopped: myCarTransform.locationY= 0
        }
    }
}


