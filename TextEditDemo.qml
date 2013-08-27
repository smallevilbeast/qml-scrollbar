import QtQuick 1.0

Item
{
    width: 200
    height: 300
    Flickable
    {
        id: flick
        anchors.fill: parent
        contentWidth: edit.paintedWidth
        contentHeight: edit.paintedHeight
        interactive: true
        clip: true
 
        function ensureVisible(r) {
            if (contentX >= r.x)
                contentX = r.x;
            else if (contentX+width <= r.x+r.width)
                contentX = r.x+r.width-width;
            if (contentY >= r.y)
                contentY = r.y;
            else if (contentY+height <= r.y+r.height)
                contentY = r.y+r.height-height;
        }
 
        TextEdit
        {
            id: edit
            width: flick.width
            height: flick.height
            focus: true
            wrapMode: TextEdit.Wrap
            selectByMouse: true
            onCursorRectangleChanged: flick.ensureVisible(cursorRectangle)
        }
    }
 
    ScrollBar
    {
        scrollArea: flick
    }
 	
}