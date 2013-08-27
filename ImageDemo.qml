import QtQuick 1.0

Item
{
    width: 200
    height: 300
	
    Flickable
    {
        id: flick
        anchors.fill: parent
        contentWidth: picture.width
        contentHeight: picture.height
        interactive: true
        clip: true

        Image {
            id: picture
            source: "http://h.hiphotos.baidu.com/album/w%3D2048/sign=236f87dc32fa828bd1239ae3c9274034/d31b0ef41bd5ad6e4295673380cb39dbb7fd3cfe.jpg"
            asynchronous: true
        }
    }
 
    ScrollBar
    {
        scrollArea: flick
		traditional: true
    }
	
    ScrollBar
    {
        scrollArea: flick
		orientation: Qt.Horizontal		
		traditional: true
    }
	
}