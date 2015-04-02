using Toybox.WatchUi as Ui;
using Toybox.Math as Math;

class CompassPointHeadingView extends Ui.SimpleDataField {

    function initialize() {
        label = "Heading";
    }

    function compute(info) {
        var heading = info.currentHeading;
        if (heading != null) {
            var deg = radToDeg(heading);
            return degToCompassPoint(deg);
        }
        return "";
    }

    function radToDeg(rad) {
		var deg = rad * 180 / Math.PI;
		if (deg < 0) {
		    deg += 360.0;
		}
		return deg;
	}

    function degToCompassPoint(deg) {
        if (deg <= 22.5) {
            return "N";
        } else if (deg < 67.5) {
            return "NE";
        } else if (deg <= 112.5) {
            return "E";
        } else if (deg < 157.5) {
            return "SE";
        } else if (deg <= 202.5) {
            return "S";
        } else if (deg < 247.5) {
            return "SW";
        } else if (deg <= 292.5) {
            return "W";
        } else if (deg < 337.5) {
            return "NW";
        } else {
            return "N";
        }
    }
}